--[[
  ============================================================
  汉化模板 v3（严格整句匹配 · 只翻词表里的原文）
  - 只做「整句 = 词表键」的替换，不做子串替换，不会误伤其他文字
  - 支持数字计数：0 stolen / 11 on
  - 事件驱动 + 兜底扫描，task.spawn 后台跑，不阻塞目标脚本
  ============================================================
]]

local Translations = {
    ["Opens the Rare Egg Hop panel. Pick Divine, Eternal or Secret, and it hops to fresh servers until one is still in the field."] = "打开稀有蛋跳服面板。选神圣/永恒/秘密，然后不断跳服，直到找到场上仍有该蛋的服务器。",
    ["Instead of banking a stolen egg, drops it just before the safe zone line so a friend can pick it up."] = "偷到蛋不入库，而是在安全区分界线前丢下，让好友去捡。",
    ["Steals normal-world eggs that match your filters and brings them home."] = "偷取符合筛选条件的普通世界蛋，并把它们带回家。",
    ["YOU'RE ON CHEAT SERVER YOU GOT FLAGGED BY SAE"] = "你处于作弊服务器，已被 SAE 标记",
    ["Auto Steal (Normal)"] = "自动偷蛋（普通）",
    ["Sena Exclusive"] = "Sena 专属",
    ["Steal An Egg"] = "偷走一个蛋",
    ["Eggs & Pets"] = "蛋与宠物",
    ["Open Hop UI"] = "打开跳服面板",
    ["Help Friend"] = "帮助好友",
    ["Auto Steal"] = "自动偷蛋",
    ["Donate"] = "赞助",
    ["Search"] = "搜索",
    ["Steal"] = "偷取",
    ["MAIN"] = "主菜单",
    ["Home"] = "首页",
    ["Pets"] = "宠物",
}

local cache = {}

local function translateText(text)
    local hit = cache[text]
    if hit ~= nil then return hit end

    local out = Translations[text]
    if out == nil then
        local n, rest = text:match("^(%d+)%s+(.+)$")
        if n and rest == "stolen" then
            out = n .. " 颗已偷"
        elseif n and rest == "on" then
            out = n .. " 人开启"
        end
    end
    if out == nil then
        local trimmed = text:gsub("^%s+", ""):gsub("%s+$", "")
        if trimmed ~= text then out = Translations[trimmed] end
    end

    cache[text] = out and out or text
    return cache[text]
end

local function isTextGui(gui)
    local ok, class = pcall(function() return gui.ClassName end)
    if not ok then return false end
    return class == "TextLabel" or class == "TextButton" or class == "TextBox"
end

local function translateGui(gui)
    local ok, text = pcall(function() return gui.Text end)
    if not ok or type(text) ~= "string" or text == "" then return end
    if not text:find("%a") then return end
    local want = translateText(text)
    if want ~= text then
        pcall(function() gui.Text = want end)
    end
end

local function getRoots()
    local roots = {}
    pcall(function() table.insert(roots, game:GetService("CoreGui")) end)
    pcall(function()
        local plr = game:GetService("Players").LocalPlayer
        if plr and plr:FindFirstChild("PlayerGui") then
            table.insert(roots, plr.PlayerGui)
        end
    end)
    return roots
end

local function onAdded(desc)
    if isTextGui(desc) then
        pcall(translateGui, desc)
        task.delay(0.1, function() pcall(translateGui, desc) end)
        task.delay(0.5, function() pcall(translateGui, desc) end)
    end
end

local watched = setmetatable({}, { __mode = "k" })

local function watchRoots()
    for _, root in ipairs(getRoots()) do
        if not watched[root] then
            watched[root] = true
            pcall(function()
                root.DescendantAdded:Connect(function(desc)
                    pcall(onAdded, desc)
                end)
            end)
        end
    end
end

local function scanPass()
    for _, root in ipairs(getRoots()) do
        local ok, list = pcall(function() return root:GetDescendants() end)
        if ok and list then
            for _, gui in ipairs(list) do
                if isTextGui(gui) then pcall(translateGui, gui) end
            end
        end
    end
end

local function loop()
    local start = os.clock()
    local fast = true
    while true do
        watchRoots()
        pcall(scanPass)
        if fast and (os.clock() - start) > 30 then fast = false end
        task.wait(fast and 1.2 or 4)
    end
end

watchRoots()
local started = pcall(function() task.spawn(loop) end)

local ok, err = pcall(function()
    loadstring(game:HttpGet("https://senahub.xyz/senaexclusive"))()
end)
if not ok then
    warn("加载失败:", err)
end

if not started then
    pcall(function() coroutine.resume(coroutine.create(loop)) end)
end
