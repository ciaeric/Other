﻿--[[--
	alex@0
--]]--
----------------------------------------------------------------------------------------------------
local ADDON,NS = ...;
----------------------------------------------------------------------------------------------------
NS.L = NS.L or {EMOTE = {}, };
local L = NS.L;
----------------------------------------------------------------------------------------------------
L.EMOTE["zhTW"] = {
    Angel = "天使",
    Angry = "生氣",
    Biglaugh = "大笑",
    Clap = "鼓掌",
    Cool = "酷",
    Cry = "哭",
    Cute = "可愛",
    Despise = "鄙視",
    Dreamsmile = "美夢",
    Embarras = "尷尬",
    Evil = "邪惡",
    Excited = "興奮",
    Faint = "暈",
    Fight = "打架",
    Flu = "流感",
    Freeze = "呆",
    Frown = "皺眉",
    Greet = "致敬",
    Grimace = "鬼臉",
    Growl = "齜牙",
    Happy = "開心",
    Heart = "心",
    Horror = "恐懼",
    Ill = "生病",
    Innocent = "無辜",
    Kongfu = "功夫",
    Love = "花癡",
    Mail = "郵件",
    Makeup = "化妝",
    Mario = "馬里奧",
    Meditate = "沉思",
    Miserable = "可憐",
    Okay = "好",
    Pretty = "漂亮",
    Puke = "吐",
    Shake = "握手",
    Shout = "喊",
    Silent = "閉嘴",
    Shy = "害羞",
    Sleep = "睡覺",
    Smile = "微笑",
    Suprise = "吃驚",
    Surrender = "失敗",
    Sweat = "流汗",
    Tear = "流淚",
    Tears = "悲劇",
    Think = "想",
    Titter = "偷笑",
    Ugly = "猥瑣",
    Victory = "勝利",
    Volunteer = "雷鋒",
    Wronged = "委屈",
};
----------------------------------------------------------------------------------------------------
if GetLocale() ~= "zhTW" then return;end
L.Locale = "zhTW";
L.DBIcon_Text = "開閉設置窗體";
L.SC_DATA1 = {
	CHAT_WHISPER_GET = "[密]%s説: ",
	CHAT_WHISPER_INFORM_GET = "[密]对%s説: ",
	CHAT_MONSTER_WHISPER_GET = "[密]%s説: ",
	CHAT_BN_WHISPER_GET = "[密]%s説: ",
	CHAT_BN_WHISPER_INFORM_GET = "[密]对%s説: ",
	CHAT_BN_CONVERSATION_GET = "%s:",
	CHAT_BN_CONVERSATION_GET_LINK = "|Hchannel:BN_CONVERSATION:%d|h[%s.對話]|h",
	CHAT_SAY_GET = "[説]%s: ",
	CHAT_MONSTER_SAY_GET = "[説]%s: ",
	CHAT_YELL_GET = "[喊]%s: ",
	CHAT_MONSTER_YELL_GET = "[喊]%s: ",
	CHAT_GUILD_GET = "|Hchannel:Guild|h[會]|h%s: ",
	CHAT_OFFICER_GET = "|Hchannel:OFFICER|h[官]|h%s: ",
	CHAT_PARTY_GET = "|Hchannel:Party|h[隊]|h%s: ",
	CHAT_PARTY_LEADER_GET = "|Hchannel:PARTY|h[隊]|h%s: ",
	CHAT_MONSTER_PARTY_GET = "|Hchannel:Party|h[隊]|h%s: ",
	CHAT_PARTY_GUIDE_GET = "|Hchannel:PARTY|h[副]|h%s: ",
	CHAT_INSTANCE_CHAT_GET = "|Hchannel:INSTANCE_CHAT|h[副]|h%s: ",
	CHAT_INSTANCE_CHAT_LEADER_GET = "|Hchannel:INSTANCE_CHAT|h[副]|h%s: ",
	CHAT_RAID_GET = "|Hchannel:raid|h[團]|h%s: ",
	CHAT_RAID_LEADER_GET = "|Hchannel:raid|h[團]|h%s: ",
	CHAT_RAID_WARNING_GET = "[團]%s: ",

	CHAT_AFK_GET = "[AFK]%s: ",
	CHAT_DND_GET = "[DND]%s: ",
	CHAT_EMOTE_GET = "%s: ",
	CHAT_PET_BATTLE_INFO_GET = "|Hchannel:PET_BATTLE_INFO|h[寵]|h: ",
	CHAT_PET_BATTLE_COMBAT_LOG_GET = "|Hchannel:PET_BATTLE_COMBAT_LOG|h[寵]|h: ",
	CHAT_CHANNEL_LIST_GET = "|Hchannel:頻道:%d|h[%s]|h",
	CHAT_CHANNEL_GET = "%s: ",
};
L.SC_DATA2 = {
		{"綜合",			1,6,	"綜",},
		{"交易",			1,6,	"交",},
		{"本地防務",		1,12,	"本",},
		{"尋求組隊",		1,12,	"尋",},
		{"大脚世界频道",1,18,"世",},
};
L.SC_DATA3 = {
	"^綜合 - ",
	"^尋求組隊$",
};
L.CHATBAR = {
	T_SAY = "說",
	T_PARTY = "隊",
	T_RAID = "團",
	T_RW = "通",
	T_INSTANCE_CHAT = "副",
	T_GUILD = "會",
	T_YELL = "喊",
	T_WHISPER = "密",
	T_OFFICER = "官",
	LINE_DBM1 = "\124cff80ffffDBM/BW Countdown\124r",
	LINE_DBM2 = "\124cff80ffffLeft click to start 6s countdown\124r",
	LINE_DBM3 = "\124cff80ffffRight click to cancel countdown\124r",
	T_STAT = "屬性通報",
	LINE_STAT1 = "屬性報告",
	READYCHECK = "就位確認",
};
L.EMOTE_STRING = {
	Emote_Panel_STRING_1 = "Emote Panel",
	Emote_Panel_STRING_2 = "Click to open panel",
	Emote_Panel_STRING_3 = "<Ctrl>Move Icon",
};
L.WTG_STRING = {
	FORMAT_WELCOME = [[
		歡迎
	]],
	FORMAT_BROADCAST = "新公會成員：%1$s Lv-%3$s %2$s",--name,class,level,area,achievement points
	WTG_STRING_1 = "\124cffffffff入會歡迎語\124r",
	WTG_STRING_2 = "\124cff80ffff左鍵點擊切換\124r",
	WTG_STRING_3 = "\124cff80ffff右鍵點擊展示\124r",
	WTG_STRING_ON = "\124cff40ff40已開啓\124r",
	WTG_STRING_OFF = "\124cffff4040已關閉\124r",
};
L.CONFIG = {
	wel					 = "\124cffff3f3falaChat\124r已加載,/alac或/alachat打開設置",
	title				 = "設置",
	shortChannelName	 = "短頻道名",
	itemLinkEnhanced	 = "公共頻道物品鏈接",
	chatEmote			 = "聊天表情",
	ColorNameByClass	 = "聊天職業著色",
	filterQuestAnn		 = "NONE",
	channelBarChannel	 = 
	{
		SAY,
		PARTY,
		RAID,
		RAID_WARNING,
		INSTANCE_CHAT,
		GUILD,
		YELL,
		WHISPER,
		OFFICER,
		GENERAL,
		TRADE,
		"本地防務",
		LOOK_FOR_GROUP,
		label			 = "頻道切換欄",
	},
	channelBarStyle		 = "頻道切換欄風格",
	--
	--
	chatFrameScroll		 = "聊天框左側滾動到底部按鈕",
	roll				 = "Roll",
	DBMCountDown		 = "倒計時",
	welcomeToGuild		 = "歡迎新公會成員",
	broadCastNewMember	 = "通報新公會成員",
	ReadyCheck			 = "就位確認",
	statReport			 = "屬性通報",
	copy				 = "複製聊天",
	level				 = "聊天窗體顯示公會成員等級",
	scale				 = "縮放",
	position			 = "位置",
	hideConfBtn			 = "隱藏選項設置齒輪",
};
L.REPORT = {
	neckLevel			 = "項鏈",
	azLevel				 = "等級",
};
