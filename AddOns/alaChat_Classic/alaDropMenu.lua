﻿--[[--
	alex@0
--]]--
----------------------------------------------------------------------------------------------------
local ADDON, NS = ...;
----------------------------------------------------------------------------------------------------
local math, table, string, pairs, type, select, tonumber, tostring, unpack = math, table, string, pairs, type, select, tonumber, tostring, unpack;
local _G = _G;
local _ = nil;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------main
local function _debug_(...)
	print("\124cffff0000alaChat addon:\124r", ...);
end
local function _log_(...)
	print(...);
end
--------------------------------------------------
if alaDropMenu then return; end
alaDropMenu = {};
local DropMenu = alaDropMenu;
local NAME = "alaDropMenu";
local dropMenuBackdrop = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true,
	tileSize = 2,
	edgeSize = 2,
	insets = { left = 2, right = 2, top = 2, bottom = 2 }
};
local dropMenuBackdropColor = { 0.25, 0.25, 0.25, 0.9 };
local COUNTING_DOWN_TIMER_PERIOD = 1.5;
local dropMenuButtonHeight = 20;
local dropMenuButtonInterval = 0;
local dropMenuButtonTopBottomInterval = 2;
--------------------------------------------------
local menus = { total = 0, used = 0, };
local frameToMenu = {  };
--------------------------------------------------
--local showMenu;
--[[
	data
			handler		(function)
			elements[i]	(table)
										handler		(function)optional
										para		(table)for parameter
										text		(string)
]]
--------------------------------------------------
local function CreateMenu()
	menu = CreateFrame("Button", nil, UIParent);
	menu:SetFrameStrata("FULLSCREEN_DIALOG");
	menu:SetClampedToScreen(true);
	menu:Hide();
	menu:SetBackdrop(dropMenuBackdrop);
	menu:SetBackdropColor(dropMenuBackdropColor[1], dropMenuBackdropColor[2], dropMenuBackdropColor[3], dropMenuBackdropColor[4]);
	menu:SetScript("OnClick", function(self, button)
			self:Hide();
		end
	);
	menu:SetScript("OnEnter", function(self)
			self.isCountingDown = false;
		end
	);
	menu:SetScript("OnLeave", function(self)
			self.isCountingDown = true;
			self.countingDownTimer = COUNTING_DOWN_TIMER_PERIOD;
		end
	);
	menu:SetScript("OnUpdate", function(self, elasped)
			if self:IsShown() and self.isCountingDown then
				self.countingDownTimer = self.countingDownTimer - elasped;
				if self.countingDownTimer <= 0 then
					self.isCountingDown = false;
					self:Hide();
				end
			end
		end
	);
	menu:SetScript("OnHide", function(self)
			self.isCountingDown = false;
			for i = 1, menus.used do
				if self == menus[i] then
					menus[i] = menus[menus.used]
					menus[menus.used] = self;
					menu.used = menus.used - 1;
					frameToMenu[self.parent] = nil;
					break;
				end
			end
		end
	);
	menu.buttons = {  };

	return menu;
end
local function GetMenu(parent, anchor)
	local menu = nil;
	--[[if frameToMenu[parent] then
		menu = frameToMenu[parent];
	else--]]if menus.used < menus.total then
		menus.used = menus.used + 1;
		manu = menus[menus.used];
	else
		menu = CreateMenu();
		menus.total = menus.total + 1;
		menus[menus.total] = menu;
		menus.used = menus.total;
	end
	menu.parent = parent;
	frameToMenu[parent] = menu;
	menu:ClearAllPoints();
	if anchor == "TOPRIGHT" then
		menu:SetPoint("BOTTOMLEFT", parent, "TOPRIGHT", 0, 0);
	elseif anchor == "TOPLEFT" then
		menu:SetPoint("BOTTOMRIGHT", parent, "TOPLEFT", 0, 0);
	elseif anchor == "BOTTOMRIGHT" then
		menu:SetPoint("TOPLEFT", parent, "BOTTOMRIGHT", 0, 0);
	elseif anchor == "BOTTOMLEFT" then
		menu:SetPoint("TOPRIGHT", parent, "BOTTOMLEFT", 0, 0);
	else
		menu:SetPoint("BOTTOMLEFT", parent, "TOPRIGHT", 0, 0);
	end
	menu.isCountingDown = true;
	menu.countingDownTimer = COUNTING_DOWN_TIMER_PERIOD + 1.0;
	return menu;
end
local function dropMenuButtonOnClick(self, button)
	if self.handler then
		self.handler(unpack(self.para));
	else
		self:GetParent().handler(unpack(self.para));
	end
	self:GetParent():Hide();
end
local function dropMenuButtonOnEnter(self)
	self:GetParent().isCountingDown = false;
end
local function dropMenuButtonOnLeave(self)
	local P = self:GetParent();
	P.isCountingDown = true;
	P.countingDownTimer = COUNTING_DOWN_TIMER_PERIOD;
end
local function closeMenu_Handler(self)
	self:Hide();
end

local function CreateMenuButton(menu, x, y)
	local button = CreateFrame("Button", nil, menu);
	button:SetFrameStrata("FULLSCREEN_DIALOG");
	button:SetHeight(dropMenuButtonHeight);
	--button:SetNormalTexture("Interface\\Buttons\\UI-StopButton");
	--button:SetPushedTexture("Interface\\Buttons\\UI-StopButton");
	button:SetHighlightTexture("Interface\TargetingFrame\UI-StatusBar");
	button:GetHighlightTexture():SetVertexColor(0.5, 0.5, 0.0, 0.75);
	button:SetPoint("TOP", menu, x, y);

	local text = button:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall");
	text:SetPoint("LEFT", 2, 0);
	text:SetTextColor(0.9, 0.9, 0.9, 0.9);
	button.text = text;

	-- local texture = button:CreateTexture(nil, "ARTWORK");
	-- texture:SetSize(dropMenuButtonHeight / 2, dropMenuButtonHeight);
	-- texture:SetPoint("RIGHT", -2, 0);
	-- texture:SetTexture("interface\\buttons\\ui-colorpicker-buttons");
	-- texture:SetTexCoord(0.25, 0.375, 0.0, 1.0);
	-- texture:SetVertexColor(1.0, 1.0, 0.25, 1.0);
	-- button.texture = texture;
	
	button:SetScript("OnClick", dropMenuButtonOnClick);
	button:SetScript("OnEnter", dropMenuButtonOnEnter);
	button:SetScript("OnLeave", dropMenuButtonOnLeave);

	return button;
end
local function showMenu(parent, anchor, data)
	if type(data) ~= "table" or (type(data) == "table" and (type(data.elements) ~= "table" or type(data.handler) ~= "function")) then
		return;
	end
	if frameToMenu[parent] and frameToMenu[parent]:IsShown() then
		frameToMenu[parent]:Hide();
		frameToMenu[parent] = nil;
		return;
	end
	local menu = GetMenu(parent, anchor);
	menu.handler = data.handler;
	local buttons = menu.buttons;
	local elements = data.elements;
	local numButtons = #elements + 1;
	if #buttons < numButtons then
		for i = #buttons + 1, numButtons do
			buttons[i] = CreateMenuButton(menu, 0, -((i - 1) * (dropMenuButtonHeight + dropMenuButtonInterval) + dropMenuButtonTopBottomInterval));
		end
	elseif #buttons > numButtons then
		for i = numButtons + 1, #buttons do
			buttons[i]:Hide();
		end
	end

	local width = -1;
	for i = 1, #elements do
		local button = buttons[i];

		button.handler = elements[i].handler;
		button.para = elements[i].para;
		button:Show();

		button.text:SetText(elements[i].text);
		local w = button.text:GetWidth();
		if w > width then
			width = w;
		end
	end
	local button = buttons[numButtons];
	button.handler = closeMenu_Handler;
	button.para = { menu, };
	button:Show();
	button.text:SetText("Close");
	local w = button.text:GetWidth();
	if w > width then
		width = w;
	end

	width = width + 4;
	for i = 1, numButtons do
		buttons[i]:SetWidth(width);
	end
	menu:SetWidth(width);
	menu:SetHeight(dropMenuButtonHeight * numButtons + dropMenuButtonInterval * (numButtons - 1) + dropMenuButtonTopBottomInterval * 2);

	menu:Show();
end

-- local function Update()
-- 	for i = 1, #menus do
-- 		if not menus[i].parent:IsShown() then
-- 			menus[i]:Hide();
-- 		end
-- 	end
-- end
-- C_Timer.NewTicker(0.2, Update);

alaDropMenu.showMenu = showMenu;
alaDropMenu.hideMenu = hideMenu;
_G["ALADROP"] = showMenu;
