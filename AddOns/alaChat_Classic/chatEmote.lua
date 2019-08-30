﻿--[[--
	alex@0
--]]--
----------------------------------------------------------------------------------------------------
local ADDON,NS = ...;
local FUNC = NS.FUNC;
--if not FUNC then return;end
local L = NS.L;
if not L then return;end
local LOCALE = GetLocale();
----------------------------------------------------------------------------------------------------
local math, table, string, pairs, type, select, tonumber, unpack = math, table, string, pairs, type, select, tonumber, unpack;

local GameTooltip = GameTooltip;
local GetCurrentResolution = GetCurrentResolution;
local GetScreenResolutions = GetScreenResolutions;
local ChatEdit_ChooseBoxForSend = ChatEdit_ChooseBoxForSend;

----------------------------------------------------------------------------------------------------
local EMOTE_STRING = L.EMOTE_STRING or {};
local Emote_Panel_STRING_1=EMOTE_STRING.Emote_Panel_STRING_1 or "";
local Emote_Panel_STRING_2=EMOTE_STRING.Emote_Panel_STRING_2 or "";
local Emote_Panel_STRING_3=EMOTE_STRING.Emote_Panel_STRING_3 or "";

local EMOTE_DATA = L.EMOTE;
if not EMOTE_DATA then return;end
local EMOTE_DATA_LOCALE = EMOTE_DATA[LOCALE];
if not EMOTE_DATA_LOCALE then 
	EMOTE_DATA_LOCALE = EMOTE_DATA.enUS;
	if not EMOTE_DATA_LOCALE then
		return;
	end
end

local mainButtonSize = 24;

local iconScale = 1
local ICON_PATH = NS.ICON_PATH;
local EMOTE_PATH = NS.EMOTE_PATH;
local PANEL_HIDE_PERIOD = 1.5;
local SystemIconTable = 
{
	{strlower(ICON_TAG_RAID_TARGET_STAR1)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_1"},
	{strlower(ICON_TAG_RAID_TARGET_CIRCLE1)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_2"},
	{strlower(ICON_TAG_RAID_TARGET_DIAMOND1)	,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_3"},
	{strlower(ICON_TAG_RAID_TARGET_TRIANGLE1)	,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_4"},
	{strlower(ICON_TAG_RAID_TARGET_MOON1)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_5"},
	{strlower(ICON_TAG_RAID_TARGET_SQUARE1)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_6"},
	{strlower(ICON_TAG_RAID_TARGET_CROSS1)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_7"},
	{strlower(ICON_TAG_RAID_TARGET_SKULL1)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_8"},
	-- {strlower(ICON_TAG_RAID_TARGET_STAR2)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_1"},
	-- {strlower(ICON_TAG_RAID_TARGET_CIRCLE2)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_2"},
	-- {strlower(ICON_TAG_RAID_TARGET_DIAMOND2)	,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_3"},
	-- {strlower(ICON_TAG_RAID_TARGET_TRIANGLE2)	,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_4"},
	-- {strlower(ICON_TAG_RAID_TARGET_MOON2)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_5"},
	-- {strlower(ICON_TAG_RAID_TARGET_SQUARE2)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_6"},
	-- {strlower(ICON_TAG_RAID_TARGET_CROSS2)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_7"},
	-- {strlower(ICON_TAG_RAID_TARGET_SKULL2)		,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_8"},
	-- {strlower(RAID_TARGET_1)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_1"},
	-- {strlower(RAID_TARGET_2)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_2"},
	-- {strlower(RAID_TARGET_3)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_3"},
	-- {strlower(RAID_TARGET_4)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_4"},
	-- {strlower(RAID_TARGET_5)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_5"},
	-- {strlower(RAID_TARGET_6)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_6"},
	-- {strlower(RAID_TARGET_7)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_7"},
	-- {strlower(RAID_TARGET_8)					,"Interface\\TargetingFrame\\UI-RaidTargetingIcon_8"},
};
local CustomizedIconTable = {
	{"Angel"		, EMOTE_PATH .. "angel.tga"},
	{"Angry"		, EMOTE_PATH .. "angry.tga"},
	{"Biglaugh"		, EMOTE_PATH .. "biglaugh.tga"},
	{"Clap"			, EMOTE_PATH .. "clap.tga"},
	{"Cool"			, EMOTE_PATH .. "cool.tga"},
	{"Cry"			, EMOTE_PATH .. "cry.tga"},
	{"Cute"			, EMOTE_PATH .. "cutie.tga"},
	{"Despise"		, EMOTE_PATH .. "despise.tga"},
	{"Dreamsmile"	, EMOTE_PATH .. "dreamsmile.tga"},
	{"Embarras"		, EMOTE_PATH .. "embarrass.tga"},
	{"Evil"			, EMOTE_PATH .. "evil.tga"},
	{"Excited"		, EMOTE_PATH .. "excited.tga"},
	{"Faint"		, EMOTE_PATH .. "faint.tga"},
	{"Fight"		, EMOTE_PATH .. "fight.tga"},
	{"Flu"			, EMOTE_PATH .. "flu.tga"},
	{"Freeze"		, EMOTE_PATH .. "freeze.tga"},
	{"Frown"		, EMOTE_PATH .. "frown.tga"},
	{"Greet"		, EMOTE_PATH .. "greet.tga"},
	{"Grimace"		, EMOTE_PATH .. "grimace.tga"},
	{"Growl"		, EMOTE_PATH .. "growl.tga"},
	{"Happy"		, EMOTE_PATH .. "happy.tga"},
	{"Heart"		, EMOTE_PATH .. "heart.tga"},
	{"Horror"		, EMOTE_PATH .. "horror.tga"},
	{"Ill"			, EMOTE_PATH .. "ill.tga"},
	{"Innocent"		, EMOTE_PATH .. "innocent.tga"},
	{"Kongfu"		, EMOTE_PATH .. "kongfu.tga"},
	{"Love"			, EMOTE_PATH .. "love.tga"},
	{"Mail"			, EMOTE_PATH .. "mail.tga"},
	{"Makeup"		, EMOTE_PATH .. "makeup.tga"},
	{"Mario"		, EMOTE_PATH .. "mario.tga"},
	{"Meditate"		, EMOTE_PATH .. "meditate.tga"},
	{"Miserable"	, EMOTE_PATH .. "miserable.tga"},
	{"Okay"			, EMOTE_PATH .. "okay.tga"},
	{"Pretty"		, EMOTE_PATH .. "pretty.tga"},
	{"Puke"			, EMOTE_PATH .. "puke.tga"},
	{"Shake"		, EMOTE_PATH .. "shake.tga"},
	{"Shout"		, EMOTE_PATH .. "shout.tga"},
	{"Silent"		, EMOTE_PATH .. "shuuuu.tga"},
	{"Shy"			, EMOTE_PATH .. "shy.tga"},
	{"Sleep"		, EMOTE_PATH .. "sleep.tga"},
	{"Smile"		, EMOTE_PATH .. "smile.tga"},
	{"Suprise"		, EMOTE_PATH .. "suprise.tga"},
	{"Surrender"	, EMOTE_PATH .. "surrender.tga"},
	{"Sweat"		, EMOTE_PATH .. "sweat.tga"},
	{"Tear"			, EMOTE_PATH .. "tear.tga"},
	{"Tears"		, EMOTE_PATH .. "tears.tga"},
	{"Think"		, EMOTE_PATH .. "think.tga"},
	{"Titter"		, EMOTE_PATH .. "titter.tga"},
	{"Ugly"			, EMOTE_PATH .. "ugly.tga"},
	{"Victory"		, EMOTE_PATH .. "victory.tga"},
	{"Volunteer"	, EMOTE_PATH .. "volunteer.tga"},
	{"Wronged"		, EMOTE_PATH .. "wronged.tga"},
};
------------------------------------------------------------------------------------------------
--------------------------------------------------chat Emote
local control_chatEmote = true;
------------------------------------------------------------------------------------------------
local function IconSize(f)
	local _, font = f:GetFont();
	--local res=select(GetCurrentResolution(),GetScreenResolutions())
	--local _,h=string.match(res,"(%d+)x(%d+)")
	font = iconScale * font;--*h/800
	font = floor(font);
	return font;
end
------------------------------------------------------------------------------------------------

local function iconOnClick(self)
	local editBox = ChatEdit_ChooseBoxForSend();
	editBox:Show();
	editBox:SetFocus();
	editBox:Insert("\124T" .. self.texture .. ":" .. IconSize(SELECTED_CHAT_FRAME) .. "\124t");
	self.panel:Hide();
end
local function iconOnEnter(self)
	GameTooltip:SetOwner(self.panel, "ANCHOR_TOPLEFT");
	GameTooltip:SetText(self.text);
	GameTooltip:Show();
	self.panel.isCounting = nil;
end
local function iconOnLeave(self)
	if GameTooltip:GetOwner() == self.panel then
		GameTooltip:Hide();
	end
	self.panel.showTimer = PANEL_HIDE_PERIOD;
	self.panel.isCounting = true;
end

local function CreateMainButton()
	local mainButton = CreateFrame("Button", nil, UIParent);
	mainButton:SetWidth(mainButtonSize);
	mainButton:SetHeight(mainButtonSize);
	mainButton:SetNormalTexture(ICON_PATH .. "emote_nor");
	mainButton:SetPushedTexture(ICON_PATH .. "emote_push");
	mainButton:SetHighlightTexture(ICON_PATH .. "emote_highlight");
	mainButton:GetHighlightTexture():SetBlendMode("ADD");
	mainButton:SetAlpha(0.8);
	mainButton:SetFrameLevel(32);
	mainButton:SetMovable(true);
	mainButton:EnableMouse(true);
	mainButton:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	mainButton:RegisterForDrag("LeftButton", "RightButton");
	mainButton:Show()

	mainButton:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT");
		GameTooltip:AddLine(Emote_Panel_STRING_1);
		GameTooltip:AddLine(Emote_Panel_STRING_2);
		--GameTooltip:AddLine(Emote_Panel_STRING_3);
		GameTooltip:Show();
		self.panel.isCounting=nil;
	end)
	mainButton:SetScript("OnLeave", function(self)
		if GameTooltip:GetOwner() == self then
			GameTooltip:Hide();
		end
		self.panel.showTimer = PANEL_HIDE_PERIOD;
		self.panel.isCounting = true;
	end)
	--mainButton:SetScript("OnDragStart", function() if self:IsMovable() and IsControlKeyDown() then self:StartMoving();end end)
	--mainButton:SetScript("OnDragStop", function() if self:IsMovable() then self:StopMovingOrSizing();end end)
	mainButton:SetScript("OnClick", function(self)
		if self.panel:IsShown() then
			self.panel:Hide();
		else
			self.panel:Show();
		end
		if GameTooltip:GetOwner()==self then
			GameTooltip:Hide();
		end
	end)
	mainButton:SetPoint("BOTTOMRIGHT", ChatFrame1EditBox, "BOTTOMLEFT", -1, 3);

	return mainButton;
end
local function CreateIcon(panel, text, texture, px, py)
	local icon = CreateFrame("Button", nil, panel);
	icon:Show();
	icon:EnableMouse(true);
	icon:SetWidth(23);
	icon:SetHeight(23);
	icon.text = text;
	icon.texture = texture;
	icon:SetNormalTexture(texture);
	icon:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight");
	icon:GetHighlightTexture():SetBlendMode("ADD");
	icon:SetFrameLevel(35);
	icon:ClearAllPoints();
	icon.panel = panel;
	icon:SetPoint("TOPLEFT", panel, "TOPLEFT", (px - 1) * 25 + 5, (1 - py ) * 25 - 5);
	icon:SetScript("OnClick", iconOnClick);
	icon:SetScript("OnEnter", iconOnEnter);
	icon:SetScript("OnLeave", iconOnLeave);

	return icon;
end
local function CreatePanel(mainButton)
	panel = CreateFrame("Frame", nil, UIParent);
	panel:SetWidth(260);
	panel:SetHeight(160);
	panel:SetFrameLevel(32);
	panel:SetMovable(true);
	panel:EnableMouse(true);
	panel:Hide();
	panel:ClearAllPoints();
	panel:SetPoint("BOTTOMLEFT", mainButton, "TOPRIGHT", 0, 32);
	panel:SetBackdrop(
		{
			bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true,
			tileSize = 16,
			edgeSize = 7,
			insets = { left = 4, right = 4, top = 4, bottom = 4 }
		}
	);
	panel:SetBackdropColor(0, 0, 0);
	panel.showTimer = 0;
	
	panel:SetScript("OnUpdate", function(self, elapsed)
		if (not self.isCounting) then
			return;
		elseif (self.showTimer <= 0) then
			self:Hide();
			self.isCounting = nil;
		else
			self.showTimer = self.showTimer - elapsed;
		end
	end)
	panel:SetScript("OnEnter", function(self) self.isCounting = nil;end)
	panel:SetScript("OnLeave", function(self)
		self.showTimer = PANEL_HIDE_PERIOD;
		self.isCounting = true;
	end)
	--panel:SetScript("OnShow", function() for k, v in pairs(self.IconList) do v:Show() end end)
	--panel:SetScript("OnHide", function() for k, v in pairs(self.IconList) do v:Hide() end end)
	
	panel.IconList={}

	local px = 1;
	local py = 1;
	local index = 1;
	for _, v in pairs(SystemIconTable) do
		panel.IconList[index] = CreateIcon(panel, EMOTE_DATA_LOCALE[v[1]] or "", v[2], px, py);
		index = index + 1;
		px = px + 1;
	    if px >= 11 then
		px = 1;
		    py = py + 1;
	    end
	end
	for _, v in pairs(CustomizedIconTable) do
		panel.IconList[index] = CreateIcon(panel, EMOTE_DATA_LOCALE[v[1]] or "", v[2], px, py);
		index = index + 1;
		px = px + 1;
	    if px >= 11 then
		px = 1;
		    py = py + 1;
	    end
	end

	 return panel;
end

local Emote_Index2Path = {};
local Emote_Path2Index = {};
local function ChatEmoteFilter(self, event, msg, ...)
	--print(msg)
	for s in string.gmatch(msg, "({[^}]+})") do
		if (Emote_Index2Path[s]) then
			 msg = string.gsub(msg , s, "\124T" .. Emote_Index2Path[s] .. ":" ..IconSize(self) .. "\124t", 1);
		end
   end
	return false, msg, ...
end

local function SendChatMessage_Filter(text)
	if control_chatEmote then
		for s in string.gmatch(text, "\124T([^:]+):%d+\124t") do
			local index = Emote_Path2Index[s];
			if index then
			-- local index = nil;
			-- for k, v in pairs(Emote_Index2Path) do
			-- 	if v == s then
			-- 		index = k;
			-- 	end
			-- end
			-- if index then
				text = string.gsub(text, "(\124T[^:]+:%d+\124t)", index, 1);
			end
		end
	end
	--print(text)
	return text;
end

local function Init()
	local mainButton = CreateMainButton();
	local panel = CreatePanel(mainButton);
	mainButton.panel = panel;

	for _, localeTable in pairs(EMOTE_DATA) do
		for k, v in pairs(CustomizedIconTable) do
			Emote_Index2Path["{" .. (localeTable[v[1]] or "") .. "}"] = v[2];
		end
	end
	for k, v in pairs(SystemIconTable) do
		Emote_Index2Path["{" .. v[1] .. "}"] = v[2];
	end

	local LT = EMOTE_DATA[LOCALE] or EMOTE_DATA["enUS"];
	for k, v in pairs(CustomizedIconTable) do
		Emote_Path2Index[v[2]] = "{" .. (LT[v[1]] or "") .. "}";
	end
	for k, v in pairs(SystemIconTable) do
		Emote_Path2Index[v[2]] = "{" .. v[1] .. "}";
	end

	return mainButton;
end

local __SendChatMessage = SendChatMessage;
_G["SendChatMessage"] = function(text, ...) __SendChatMessage(SendChatMessage_Filter(text), ...);end
local __BNSendWhisper = BNSendWhisper;
_G["BNSendWhisper"] = function(presenceID, text, ...) __BNSendWhisper(presenceID, SendChatMessage_Filter(text), ...);end
local __BNSendConversationMessage = BNSendConversationMessage;
_G["BNSendConversationMessage"] = function(target, text, ...) __BNSendConversationMessage(target, SendChatMessage_Filter(text), ...);end

local mainButton = Init();
local function chatEmote_ToggleOn(initing)
	if not initing and control_chatEmote then
		return;
	end
	control_chatEmote = true;
	mainButton:Show();
	if __alaBaseBtn then
		__alaBaseBtn:AddBtn(1, 1, mainButton, true);
	end

	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL_JOIN", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL_LEAVE", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_WARNING", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_AFK", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", ChatEmoteFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_DND", ChatEmoteFilter)

	return control_chatEmote;
end
local function chatEmote_ToggleOff()
	if not control_chatEmote then
		return;
	end
	control_chatEmote = false;
	mainButton:Hide();
	if __alaBaseBtn then
		__alaBaseBtn:RemoveBtn(mainButton);
	end

	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_CHANNEL", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_CHANNEL_JOIN", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_CHANNEL_LEAVE", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SAY", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_YELL", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_WHISPER", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_BN_WHISPER", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_WHISPER_INFORM", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_RAID", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_RAID_LEADER", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_RAID_WARNING", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_PARTY", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_PARTY_LEADER", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_GUILD", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_OFFICER", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_AFK", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_EMOTE", ChatEmoteFilter)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_DND", ChatEmoteFilter)

	--SendChatMessage = __SendChatMessage;
	--BNSendWhisper = BNSendWhisper;
	--BNSendConversationMessage = __BNSendConversationMessage;

	return control_chatEmote;
end

if FUNC then
	FUNC.ON.chatEmote = chatEmote_ToggleOn;
	FUNC.OFF.chatEmote = chatEmote_ToggleOff;
end
------------------------------------------------------------------------------------------------
