﻿--[[--

--]]--
----------------------------------------------------------------------------------------------------
local ADDON,NS=...;
local FUNC=NS.FUNC;
if not FUNC then return;end
local L=NS.L;
if not L then return;end
----------------------------------------------------------------------------------------------------
local math,table,string,pairs,type,select,tonumber,unpack=math,table,string,pairs,type,select,tonumber,unpack;
local _G=_G;
----------------------------------------------------------------------------------------------------
local CB_DATA=L.CHATBAR;
if not CB_DATA then return;end
----------------------------------------------------------------------------------------------------
local alaBaseBtn=__alaBaseBtn;
if not alaBaseBtn then
	return;
end

local btnPackIndex = 3;
--------------------------------------------------roll
local control_roll=false;
local btnRoll=nil;
local function Roll_On()
	if control_roll then
		return;
	end
	control_roll=true;
	if btnRoll then
		alaBaseBtn:AddBtn(btnPackIndex,-1,btnRoll,true,false,true);
	else
		btnRoll=alaBaseBtn:CreateBtn(
				btnPackIndex,
				-1,
				"RollBtn",
				"Interface\\Buttons\\UI-GroupLoot-Dice-Up",
				"Interface\\Buttons\\UI-GroupLoot-Dice-Down",
				function (self)
					RandomRoll("1","100");
					if GameTooltip:GetOwner()==self then
						GameTooltip:Hide();
					end
				end,
				{
					"\124cffffffffROLL\124r",
				}
		);
	end
	return control_roll;
end
local function Roll_Off()
	if not control_roll then
		return;
	end
	control_roll=false;
	alaBaseBtn:RemoveBtn(btnRoll,true);
	return control_roll;
end
FUNC.ON.roll=Roll_On;
FUNC.OFF.roll=Roll_Off;
----------------------------------------------------------------------------------------------------
