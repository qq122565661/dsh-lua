--[[
  ============================================================
  汉化模板 v2（扫描替换型 · 不劫持元表）
  - 纯文本匹配（不把词条当 Lua 模式），长键优先
  - 事件驱动 + 兜底扫描，全程 task.spawn，不阻塞目标脚本加载
  - 支持数字计数：0 stolen / 11 on
  ============================================================
]]

local Translations = {
    ["Opens the Rare Egg Hop panel. Pick Divine, Eternal or Secret, and it hops to fresh servers until one is still in the field."] = "打开稀有蛋跳服面板。选神圣/永恒/秘密，然后不断跳服，直到找到场上仍有该蛋的服务器。",
    ["Instead of banking a stolen egg, drops it just before the safe zone line so a friend can pick it up."] = "偷到蛋不入库，而是在安全区分界线前丢下，让好友去捡。",
    ["Steals normal-world eggs that match your filters and brings them home."] = "偷取符合筛选条件的普通世界蛋，并把它们带回家。",
    ["YOU'RE ON CHEAT SERVER YOU GOT FLAGGED BY SAE"] = "你处于作弊服务器，已被 SAE 标记",
    ["Sell Cheapest Egg When Bag Is Full"] = "背包满时卖最便宜的",
    ["Only when Rule = Selected Species"] = "仅当规则 = 所选种类",
    ["Higher is safer but takes longer"] = "速度越高越安全，但更耗时",
    ["Hide Other Players' Pets & Eggs"] = "隐藏他人宠物和蛋",
    ["102 rods and 40 fish available"] = "可用鱼竿102根、鱼40条",
    ["Add/Remove Hits On Quick Bar 2"] = "快捷2添加功能",
    ["Which checks must pass to sell"] = "需要通过哪些检查才能卖出",
    ["Auto Claim Limited Egg Reward"] = "自动领限定蛋奖励",
    ["Egg matches - 0 eggs for %$0"] = "蛋匹配数",
    ["Never sell mutated Lab eggs"] = "绝不卖变异实验室蛋",
    ["Sell By Value (max money/s)"] = "按价值卖（最高每秒金币）",
    ["Sell matching Lab eggs once"] = "立即卖出蛋",
    ["Mutate Min Value (money/s)"] = "变异最低价值（每秒）",
    ["Steal From Specific Player"] = "偷指定玩家",
    ["Hatch Min Value (money/s)"] = "孵化最低价值（每秒）",
    ["Place Min Value (money/s)"] = "放置最低价值（每秒）",
    ["These eggs are never sold"] = "这些蛋绝不卖出",
    ["These pets are never sold"] = "这些宠物绝不卖出",
    ["Auto Hit Specific Player"] = "攻击指定玩家",
    ["Boost for Mode Low Speed"] = "低速模式加速",
    ["Hop When Nothing Matches"] = "无匹配就跳服",
    ["Last: No star caught yet"] = "上次：还没抓到流星",
    ["Only when Rule = Species"] = "仅当规则 = 种类",
    ["Remove Egg / Pet Visuals"] = "清除蛋 / 宠物外观",
    ["Specific Species to Fuse"] = "指定融合物种",
    ["Steal From Other Players"] = "偷取其他玩家的蛋",
    ["Steal Missing Index Eggs"] = "偷取图鉴缺失的蛋",
    ["Steal Other Script Areas"] = "偷其他脚本区域",
    ["Steal from other players"] = "偷取其他玩家的蛋",
    ["Steal missing index eggs"] = "偷取图鉴缺失的蛋",
    ["Teleport To Fishing Spot"] = "传送到钓点",
    ["Auto Hit Nearest Player"] = "攻击最近玩家",
    ["Auto Steal From Players"] = "自动偷玩家蛋",
    ["Never sell mutated eggs"] = "绝不卖出变异蛋",
    ["Never sell mutated pets"] = "绝不卖出变异宠物",
    ["Only when Rule = Rarity"] = "仅当规则=稀有度",
    ["Remove All Visual Items"] = "清除所有视觉物品",
    ["Sell matching eggs once"] = "立即卖蛋",
    ["Treadmill While Waiting"] = "等待时跑步",
    ["Auto Upgrade Treadmill"] = "自动升级跑步机",
    ["Collect Offline Income"] = "收取离线收益",
    ["Drop Eggs At Safe Zone"] = "在安全区放蛋",
    ["Drop eggs at safe zone"] = "在安全区放蛋",
    ["Eject Incomplete Slots"] = "弹出未满槽位",
    ["No three matching pets"] = "没有三只匹配的",
    ["Players in this server"] = "本服玩家",
    ["Steal Missing Lab Eggs"] = "偷取实验室缺失的蛋",
    ["Auto Execute (Rejoin)"] = "自动执行（重进）",
    ["Keep Mutated Lab Eggs"] = "保留变异实验室蛋",
    ["Never Sell These Eggs"] = "这些蛋绝不卖",
    ["Unfavorite Everything"] = "全部取消收藏",
    ["Add to Backpack (Kg)"] = "加入背包（重量）",
    ["Anti Guard Knockback"] = "防守卫击退",
    ["Auto Hit Egg Holders"] = "攻击持蛋玩家",
    ["Hide Sleeping Guards"] = "隐藏睡眠守卫",
    ["Low Speed Multiplier"] = "低速倍率",
    ["Minimum Value (%$/s)"] = "最低价值（$/秒）",
    ["Notify Minimum Value"] = "提醒最低价值",
    ["Over 100% may glitch"] = "超过100％可能出错",
    ["Queue for Auto Steal"] = "加入自动偷蛋队列",
    ["Target Specific Eggs"] = "指定蛋",
    ["Teleport To Waypoint"] = "传送到路径点",
    ["Turn Off All Toggles"] = "关闭所有开关",
    ["Auto Apply Mutation"] = "自动应用变异",
    ["Auto Deposit Relics"] = "自动放遗物",
    ["Auto Steal (Normal)"] = "自动偷蛋（普通）",
    ["Blacklist Sell Eggs"] = "黑名单不卖蛋",
    ["Blacklist Sell Pets"] = "黑名单不卖宠物",
    ["Find Private Server"] = "找私人服务器",
    ["Fishing Webhook URL"] = "推送链接",
    ["Hatch Specific Eggs"] = "指定孵化蛋",
    ["Hide My Pets & Eggs"] = "隐藏自己的宠物和蛋",
    ["Instant Steal Steps"] = "瞬间偷蛋次数",
    ["Lowest Rarity First"] = "最低稀有度优先",
    ["Place Specific Eggs"] = "指定放置蛋",
    ["Retry Until Mutated"] = "变异成功才停",
    ["Skin My Fishing Rod"] = "给我的鱼竿换皮",
    ["Skip Owned Lab Eggs"] = "跳过已有的实验室蛋",
    ["Steal Button Action"] = "偷蛋按钮动作",
    ["Apply Mutation Now"] = "立即应用变异",
    ["Auto Banjo Cricket"] = "自动蟋蟀班卓",
    ["Auto Claim Almanac"] = "自动领取年鉴",
    ["Auto Claim Mastery"] = "自动领精通",
    ["Auto Craft Essence"] = "自动合成精华",
    ["Auto Hatch & Equip"] = "自动孵化并装备",
    ["Auto Steal Capture"] = "自动抢蛋",
    ["Butterflies Caught"] = "已抓蝴蝶",
    ["Filter By Egg Name"] = "按蛋名筛选",
    ["Filter By Mutation"] = "按变异筛选",
    ["Fuse Priority Mode"] = "融合优先级模式",
    ["Lab Egg Max Rarity"] = "实验室蛋最高稀有度",
    ["Lab Egg Sell Value"] = "实验室蛋卖出价值",
    ["Max Rarity to Fuse"] = "最高融合稀有度",
    ["Other Pens Egg ESP"] = "他人围栏蛋透视",
    ["Rejoin This Server"] = "重进本服",
    ["Steal From Players"] = "偷玩家蛋",
    ["Steal Other Script"] = "偷其他脚本的蛋",
    ["Teleport To Lagoon"] = "传送到潟湖",
    ["Tween to Butterfly"] = "追逐蝶",
    ["Admin Abuse Boost"] = "管理滥用加速",
    ["Auto Favorite Pet"] = "自动收藏宠物",
    ["Auto Fuse Machine"] = "自动融合机",
    ["Auto Sell Lab Egg"] = "自动卖实验室蛋",
    ["Auto Trade Pearls"] = "自动换珍珠",
    ["Auto Upgrade Base"] = "自动升级基地",
    ["Copy Discord Link"] = "复制社群链接",
    ["Craft Essence Now"] = "立即合成",
    ["ESP Own Base Eggs"] = "基地蛋透视",
    ["Egg Rarity Filter"] = "蛋稀有度筛选",
    ["Fast Tween To Egg"] = "快速移动前往",
    ["Fast tween to egg"] = "快速移动前往",
    ["Idle in Safe Zone"] = "在安全区待着",
    ["Keep Mutated Eggs"] = "保留变异蛋",
    ["Keep Mutated Pets"] = "保留变异宠物",
    ["Low Speed Profile"] = "低速配置",
    ["Lowest To Highest"] = "从低到高",
    ["Minimum Egg Value"] = "最低蛋价值",
    ["Mutate Egg Rarity"] = "变异蛋稀有度",
    ["No star right now"] = "当前没有流星",
    ["Pet Rarity Filter"] = "宠物稀有度筛选",
    ["Reset to Defaults"] = "恢复默认",
    ["Sell Lab Egg Rule"] = "卖实验室蛋规则",
    ["Sell Lab Eggs Now"] = "卖实验室蛋",
    ["Skip Mutated Pets"] = "跳过变异宠物",
    ["Stay On Treadmill"] = "停在跑步机",
    ["e.g. 500k, 2m, 1b"] = "例如 500k、2m、1b",
    ["About This Event"] = "活动说明",
    ["Anti Guard Panel"] = "防守卫面板",
    ["Backpack Value/s"] = "背包每秒价值",
    ["Disconnect Alert"] = "掉线提醒",
    ["Divine & Eternal"] = "神圣与永恒",
    ["Filter By Rarity"] = "按稀有度筛选",
    ["Hatch Min Rarity"] = "孵化最低稀有度",
    ["Join That Server"] = "加入该服务器",
    ["No matching eggs"] = "没有符合条件的蛋",
    ["Place Egg Rarity"] = "放置蛋稀有度",
    ["Rarities to Fuse"] = "融合稀有度",
    ["Rarities to Keep"] = "保留稀有度",
    ["Rarity And Value"] = "稀有度与价值",
    ["Select Egg / Pet"] = "选择蛋 / 宠物",
    ["Upgrade Base Now"] = "立即升级基地",
    ["Your placed eggs"] = "你的已放置蛋",
    ["Abyss Ocean %+6"] = "深渊海洋 +6",
    ["Auto Buy Trails"] = "自动买尾迹",
    ["Auto Catch Star"] = "自动抓星",
    ["Auto Equip Best"] = "自动装备最佳",
    ["Auto Ring Event"] = "自动圆环",
    ["Auto Wisp Quest"] = "自动精灵任务",
    ["Butterfly Bloom"] = "蝴蝶盛开",
    ["Capture The Egg"] = "抢蛋活动",
    ["Delivery Method"] = "运送方式",
    ["Delivery method"] = "运送方式",
    ["ESP Player Info"] = "玩家透视信息",
    ["ESP Player Size"] = "玩家透视大小",
    ["Egg Name Filter"] = "蛋名称筛选",
    ["Equip & Collect"] = "装备与收集",
    ["First Hop Delay"] = "首次跳服延迟",
    ["Fishing Mastery"] = "钓鱼精通",
    ["Fishing Webhook"] = "钓鱼推送",
    ["Fly For Capture"] = "抢蛋飞行",
    ["Hit Tween Speed"] = "攻击移动速度",
    ["Instant Prompts"] = "即时提示",
    ["Light Dark zone"] = "光暗区",
    ["Min Hatch Value"] = "最低孵化价值",
    ["Min Place Value"] = "最低放置价值",
    ["Min Steal Value"] = "最低偷取价值",
    ["Mutate Egg Name"] = "变异蛋名称",
    ["Notify Rarities"] = "提醒稀有度",
    ["Only These Eggs"] = "仅这些蛋",
    ["Only these eggs"] = "仅这些蛋",
    ["Pet Name Filter"] = "宠物名称筛选",
    ["Place Egg Order"] = "放蛋顺序",
    ["Remove Rod Skin"] = "移除鱼竿皮肤",
    ["Select Mutation"] = "选择变异",
    ["Species to Fuse"] = "融合种类",
    ["Species to Keep"] = "保留种类",
    ["Steal By Weight"] = "按重量偷蛋",
    ["Teleport To Egg"] = "传送到蛋",
    ["Teleport to egg"] = "传送到蛋",
    ["About The Gate"] = "大门说明",
    ["Anti Hit Guard"] = "防攻击守卫",
    ["Anti Treadmill"] = "防跑步机",
    ["Auto Claim Net"] = "自动领网",
    ["Auto Hatch Egg"] = "自动孵化蛋",
    ["Auto Place Egg"] = "自动放置蛋",
    ["Auto Reconnect"] = "自动重连",
    ["Auto Treadmill"] = "自动跑步机",
    ["Backpack Order"] = "背包顺序",
    ["Biggest Weight"] = "最大重量",
    ["Chase Settings"] = "追击设置",
    ["Cherry Blossom"] = "樱花",
    ["Current Server"] = "当前服务器",
    ["ESP Fixed Size"] = "透视固定大小",
    ["ESP Guard Size"] = "守卫透视大小",
    ["ESP Lost Parts"] = "掉落物透视",
    ["ESP Min Rarity"] = "透视最低稀有度",
    ["Egg Automation"] = "蛋自动化",
    ["Egg Max Rarity"] = "蛋最高稀有度",
    ["Egg Sell Value"] = "蛋卖出价值",
    ["Hop Server Now"] = "立即跳服",
    ["Low Speed User"] = "低速用户",
    ["My Pen Egg ESP"] = "自己围栏蛋透视",
    ["No Egg Carried"] = "未拿蛋",
    ["Open On Launch"] = "启动时打开界面",
    ["Pet Max Rarity"] = "宠物最高稀有度",
    ["Pet Sell Value"] = "宠物卖出价值",
    ["Place Egg Rule"] = "放蛋规则",
    ["Place Rarities"] = "可放置稀有度",
    ["Sena Exclusive"] = "Sena 专属",
    ["Steal By Value"] = "按价值偷蛋",
    ["Steal Movement"] = "偷蛋移动",
    ["Steal Priority"] = "偷蛋优先级",
    ["Web Monitoring"] = "网页监控",
    ["Wisp Companion"] = "精灵伙伴",
    ["ready to place"] = "可放置",
    ["Alien Fishing"] = "外星钓鱼",
    ["Anti Cutscene"] = "防过场动画",
    ["Auto Favorite"] = "自动收藏",
    ["Auto Sell Egg"] = "自动卖蛋",
    ["Auto Sell Pet"] = "自动卖宠物",
    ["Auto Trade Up"] = "自动升阶",
    ["Best Mutation"] = "最佳变异",
    ["Butterfly ESP"] = "蝴蝶透视",
    ["Claim Net Now"] = "立即收网",
    ["Clear History"] = "清空记录",
    ["Donators only"] = "仅捐赠者",
    ["ESP Min Value"] = "最低透视价值",
    ["ESP Show Info"] = "显示透视信息",
    ["Favorite Rule"] = "收藏规则",
    ["Highest Value"] = "价值最高优先",
    ["Hit Max Speed"] = "攻击最大速度",
    ["Idle in Field"] = "在场地上待着",
    ["Infinite Jump"] = "无限跳跃",
    ["Instant Steal"] = "瞬间偷蛋",
    ["Keep Lab Pets"] = "留实验室宠物",
    ["Min ESP Value"] = "最低透视价值",
    ["Minimum Value"] = "最低价值",
    ["Notifications"] = "通知",
    ["Rarity Filter"] = "稀有度筛选",
    ["Respawn Point"] = "重生点",
    ["Sell Egg Rule"] = "卖蛋规则",
    ["Sell Eggs Now"] = "立即卖蛋",
    ["Sell Pet Rule"] = "卖宠物规则",
    ["Sell Pets Now"] = "立即卖宠物",
    ["Shooting Star"] = "流星",
    ["Smallest Size"] = "体型最小优先",
    ["Startup Boost"] = "启动加速",
    ["Steal History"] = "偷蛋记录",
    ["Steal Webhook"] = "偷蛋推送",
    ["Stock Per Egg"] = "每种蛋储备数量",
    ["Stop & Unload"] = "停止并卸载",
    ["Trade & Craft"] = "交易与合成",
    ["e.g. 100k, 2m"] = "例如 100k、2m",
    ["Anti Ragdoll"] = "防布娃娃",
    ["Area & Value"] = "区域与价值",
    ["Biggest Size"] = "体型最大优先",
    ["Bloom Status"] = "盛开状态",
    ["Botting Mode"] = "挂机模式",
    ["ESP Egg Size"] = "蛋透视大小",
    ["Egg Rarities"] = "蛋稀有度",
    ["Fishing Area"] = "钓鱼区域",
    ["Hide Game UI"] = "隐藏游戏界面",
    ["Hold in Hand"] = "手持显示",
    ["Hop Cooldown"] = "跳服冷却",
    ["Instant Grab"] = "瞬间拾取",
    ["Invisibility"] = "隐身",
    ["Lowest Value"] = "最低价值",
    ["Min Value /s"] = "最低价值 /s",
    ["Min value /s"] = "最低价值 /s",
    ["Movable Rows"] = "可移动行",
    ["Pet Favorite"] = "宠物收藏",
    ["Ping Role ID"] = "提醒身份组 ID",
    ["Ping User ID"] = "提醒用户 ID",
    ["Quick & Keys"] = "快捷",
    ["Send Catches"] = "发送渔获",
    ["Skip Friends"] = "跳过好友",
    ["Speed Advice"] = "速度建议",
    ["Spirit Bloom"] = "灵魂绽放",
    ["Steal An Egg"] = "偷走一个蛋",
    ["Steal an Egg"] = "偷蛋",
    ["Target Areas"] = "目标区域",
    ["Test Webhook"] = "测试推送",
    ["Titan Temple"] = "泰坦神殿",
    ["Trade Recipe"] = "交易配方",
    ["Trade Up Now"] = "立即交易",
    ["Abyss Ocean"] = "深渊海洋",
    ["After Steal"] = "偷蛋结束后",
    ["All Recipes"] = "全部配方",
    ["Any Species"] = "任意种类",
    ["Best Rarity"] = "最佳稀有度",
    ["Big Egg %+3"] = "大蛋 +3",
    ["Boost Speed"] = "加速倍率",
    ["Carry Speed"] = "携带速度",
    ["Catch Tiers"] = "抓捕等级",
    ["Copy Job ID"] = "复制任务ID",
    ["ESP Details"] = "透视详情",
    ["ESP Players"] = "玩家透视",
    ["Egg Checker"] = "蛋查看器",
    ["Egg Selling"] = "蛋卖出",
    ["Eggs & Pets"] = "蛋与宠物",
    ["Fish Weight"] = "鱼的重量",
    ["Fusion Rule"] = "融合规则",
    ["Help Friend"] = "帮助好友",
    ["Join Server"] = "加入服务器",
    ["Max Players"] = "最大人数",
    ["Monitori..."] = "监控...",
    ["Open Hop UI"] = "打开跳服面板",
    ["Performance"] = "性能",
    ["Pet Selling"] = "宠物卖出",
    ["Pets To Use"] = "使用宠物",
    ["Place First"] = "优先放置",
    ["Place first"] = "优先放置",
    ["Placed Eggs"] = "已放置的蛋",
    ["Prehistoric"] = "史前",
    ["QUICK BAR 1"] = "快捷栏 1",
    ["Select Area"] = "选择区域",
    ["Select Fish"] = "选择鱼",
    ["Size / Flex"] = "大小 / 炫耀",
    ["Speed Boost"] = "移速加成",
    ["Star Status"] = "流星状态",
    ["Tween Speed"] = "移动速度",
    ["Tween speed"] = "移动速度",
    ["Webhook URL"] = "推送地址",
    ["6 - Mythic"] = "6 - 神话",
    ["AUTO STEAL"] = "自动偷蛋",
    ["Anti guard"] = "防守卫",
    ["Auto Catch"] = "自动抓捕",
    ["Auto Hatch"] = "自动孵化",
    ["Auto Index"] = "自动图鉴",
    ["Auto Place"] = "自动放置蛋",
    ["Auto Steal"] = "自动偷蛋",
    ["Auto place"] = "自动放置蛋",
    ["Auto steal"] = "自动偷蛋",
    ["Best Value"] = "价值最高",
    ["Best value"] = "价值最高",
    ["Catch Mode"] = "抓捕模式",
    ["ESP Guards"] = "守卫透视",
    ["Egg Filter"] = "蛋筛选",
    ["Egg Finder"] = "找蛋器",
    ["Forest %+2"] = "森林 +2",
    ["Hit Player"] = "攻击玩家",
    ["Light Dark"] = "光暗",
    ["Min Rarity"] = "最低稀有度",
    ["Night Only"] = "仅夜间",
    ["Normal Egg"] = "普通蛋",
    ["Pet Fusion"] = "宠物融合",
    ["Place When"] = "放置时机",
    ["Place when"] = "放置时机",
    ["Player ESP"] = "玩家透视",
    ["Relic Gate"] = "遗迹大门",
    ["Ring Event"] = "圆环活动",
    ["Secret %+2"] = "秘密 +2",
    ["Select Rod"] = "选择鱼竿",
    ["Select all"] = "全选",
    ["Server Hop"] = "跳服",
    ["Spawn Fish"] = "生成鱼",
    ["Star Alert"] = "流星提醒",
    ["Steal Idle"] = "偷蛋空闲时",
    ["Steal Mode"] = "偷蛋模式",
    ["Task Order"] = "任务顺序",
    ["Wisp Event"] = "精灵活动",
    ["e.g. 12000"] = "例如 12000",
    ["Anti Trap"] = "防陷阱",
    ["Auto Fish"] = "自动钓鱼",
    ["Auto Fuse"] = "自动融合",
    ["Auto Sell"] = "自动卖出",
    ["Boost FPS"] = "帧数提升",
    ["Character"] = "角色",
    ["Eggs &..."] = "蛋与其它",
    ["Enchanted"] = "附魔",
    ["Fractured"] = "碎裂",
    ["Go To Egg"] = "前往蛋",
    ["Go to egg"] = "前往蛋",
    ["Guard ESP"] = "守卫透视",
    ["Hit Sweep"] = "攻击横扫",
    ["Legendary"] = "传奇",
    ["Mutations"] = "变异",
    ["Other ESP"] = "其他透视",
    ["Predictor"] = "预测器",
    ["Scrambled"] = "混乱",
    ["Spawn Rod"] = "生成鱼竿",
    ["TREADMILL"] = "跑步机",
    ["Treadmill"] = "跑步机",
    ["Uncap FPS"] = "解除帧率上限",
    ["0 stolen"] = "0 颗已偷",
    ["3 - Rare"] = "3 - 稀有",
    ["Amethyst"] = "紫水晶",
    ["Anti AFK"] = "防挂机踢",
    ["Aura Bat"] = "光环蝙蝠",
    ["Auto Hop"] = "自动跳服",
    ["Best Rod"] = "最佳鱼竿",
    ["Category"] = "类别",
    ["Commands"] = "指令",
    ["Defaults"] = "默认设置",
    ["ESP Eggs"] = "蛋透视",
    ["Hit Aura"] = "攻击光环",
    ["Hit Lead"] = "攻击预判",
    ["Movement"] = "移动",
    ["Name %+3"] = "名称 +3",
    ["Parasite"] = "寄生",
    ["Pick any"] = "可多选",
    ["Pick one"] = "选择一个",
    ["Progress"] = "进度",
    ["Rarities"] = "稀有度",
    ["Rod Size"] = "鱼竿大小",
    ["Run Once"] = "执行一次",
    ["Sapphire"] = "蓝宝石",
    ["Settings"] = "设置",
    ["Turn Off"] = "关闭",
    ["Uncommon"] = "优秀",
    ["Waypoint"] = "路径点",
    ["Blocker"] = "拦截",
    ["Default"] = "默认",
    ["Discord"] = "社群",
    ["Donator"] = "捐赠者",
    ["Egg ESP"] = "蛋透视",
    ["Emerald"] = "翡翠",
    ["Eternal"] = "永恒",
    ["Filters"] = "筛选",
    ["Fishing"] = "钓鱼",
    ["Offline"] = "离线",
    ["Radiant"] = "光辉",
    ["Rainbow"] = "彩虹",
    ["Roaming"] = "游荡",
    ["Session"] = "会话",
    ["UI Size"] = "界面大小",
    ["Volcano"] = "火山",
    ["Webhook"] = "推送",
    ["Windows"] = "窗口",
    ["Always"] = "始终",
    ["Combat"] = "战斗",
    ["Common"] = "普通",
    ["Config"] = "配置",
    ["Cosmic"] = "宇宙",
    ["Desert"] = "沙漠",
    ["Divine"] = "神圣",
    ["Donate"] = "赞助",
    ["Events"] = "活动",
    ["Extras"] = "额外功能",
    ["Filter"] = "筛选",
    ["Forest"] = "森林",
    ["Golden"] = "黄金",
    ["Job ID"] = "任务ID",
    ["Jungle"] = "丛林",
    ["Limits"] = "限制",
    ["Manage"] = "管理",
    ["Mutate"] = "变异",
    ["Mythic"] = "神话",
    ["Noclip"] = "穿墙",
    ["Player"] = "玩家",
    ["Rarity"] = "稀有度",
    ["Search"] = "搜索",
    ["Secret"] = "秘密",
    ["Server"] = "服务器",
    ["Silver"] = "白银",
    ["Status"] = "状态",
    ["Visual"] = "视觉",
    ["Bloom"] = "绽放",
    ["Clear"] = "清空",
    ["Forum"] = "论坛",
    ["Guard"] = "守卫",
    ["Hatch"] = "孵化",
    ["Nitro"] = "疾速",
    ["Place"] = "放置",
    ["Reset"] = "重置",
    ["Steal"] = "偷取",
    ["TOOLS"] = "工具",
    ["Tween"] = "补间",
    ["Eggs"] = "蛋",
    ["Epic"] = "史诗",
    ["Farm"] = "挂机",
    ["Fast"] = "快速",
    ["Fish"] = "鱼",
    ["Free"] = "免费",
    ["Home"] = "首页",
    ["Idle"] = "待机",
    ["Lake"] = "湖泊",
    ["MAIN"] = "主菜单",
    ["Misc"] = "杂项",
    ["None"] = "无",
    ["Pets"] = "宠物",
    ["Rare"] = "稀有",
    ["Rods"] = "鱼竿",
    ["Sell"] = "卖出",
    ["Snow"] = "雪地",
    ["Type"] = "类型",
    ["APP"] = "应用",
    ["Any"] = "任意",
    ["ESP"] = "透视",
    ["Egg"] = "蛋",
    ["Off"] = "关闭",
    ["Pen"] = "围栏",
}

-- 键按长度从长到短：长句先命中，短词不会把长标题切碎
local orderedKeys = {}
for en in pairs(Translations) do
    table.insert(orderedKeys, en)
end
table.sort(orderedKeys, function(a, b)
    if #a == #b then return a < b end
    return #a > #b
end)

local cache = {}

local function replacePlain(text, en, cn)
    local out, pos = {}, 1
    while true do
        local s, e = text:find(en, pos, true)
        if not s then break end
        table.insert(out, text:sub(pos, s - 1))
        table.insert(out, cn)
        pos = e + 1
    end
    if pos == 1 then return nil end
    table.insert(out, text:sub(pos))
    return table.concat(out)
end

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
        out = text
        for _, en in ipairs(orderedKeys) do
            local rep = replacePlain(out, en, Translations[en])
            if rep then out = rep end
        end
    end

    cache[text] = out
    return out
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

-- 先挂监听，再加载目标脚本，保证建 UI 的那一刻就翻
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
