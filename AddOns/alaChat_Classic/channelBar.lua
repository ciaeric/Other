--[[--
	alex@0
--]]--
----------------------------------------------------------------------------------------------------
local ADDON,NS = ...;
local FUNC = NS.FUNC;
if not FUNC then return;end
local L = NS.L;
if not L then return;end
----------------------------------------------------------------------------------------------------
local math,table,string,pairs,type,select,tonumber,unpack = math,table,string,pairs,type,select,tonumber,unpack;
local _G = _G;
----------------------------------------------------------------------------------------------------
local CB_DATA = L.CHATBAR;
if not CB_DATA then return;end
local SC_DATA2 = L.SC_DATA2
if not SC_DATA2 then return;end
----------------------------------------------------------------------------------------------------
local alaBaseBtn = __alaBaseBtn;
if not alaBaseBtn then
	return;
end

local btnPackIndex = 2;
local ICON_PATH = NS.ICON_PATH;
--------------------------------------------------channel Bar
local function insertEditBox(text)
	local editBox = ChatEdit_ChooseBoxForSend();
	ChatEdit_ActivateChat(editBox);
	editBox:SetText(text);
end
local ChatTypeInfo = ChatTypeInfo;

local btn = {};
local toggle = {};
local shown = {false,false,false,false,false,false,false,false,false,false};
local function nPrevShown(index)
	local n = 0;
	for i = 1, index - 1 do
		if shown[i] then
			n = n + 1;
		end
	end
	--print(n);
	return n;
end

local COLOR = {
	ChatTypeInfo.SAY,
	ChatTypeInfo.PARTY,
	ChatTypeInfo.RAID,
	ChatTypeInfo.RAID_WARNING,
	ChatTypeInfo.INSTANCE_CHAT,
	ChatTypeInfo.GUILD,
	ChatTypeInfo.YELL,
	ChatTypeInfo.WHISPER,
	ChatTypeInfo.OFFICER,
	{ r = 1.0, g = 0.8745, b = 0.7490, },
	{ r = 1.0, g = 0.8745, b = 0.7490, },
	{ r = 1.0, g = 0.8745, b = 0.7490, },
	{ r = 1.0, g = 0.8745, b = 0.7490, },
	{ r = 1.0, g = 0.8745, b = 0.7490, },
};
local CHAR = {
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.SAY.r*255,ChatTypeInfo.SAY.g*255,ChatTypeInfo.SAY.b*255)..CB_DATA.T_SAY.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.PARTY.r*255,ChatTypeInfo.PARTY.g*255,ChatTypeInfo.PARTY.b*255)..CB_DATA.T_PARTY.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID.r*255,ChatTypeInfo.RAID.g*255,ChatTypeInfo.RAID.b*255)..CB_DATA.T_RAID.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID_WARNING.r*255,ChatTypeInfo.RAID_WARNING.g*255,ChatTypeInfo.RAID_WARNING.b*255)..CB_DATA.T_RW.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.INSTANCE_CHAT.r*255,ChatTypeInfo.INSTANCE_CHAT.g*255,ChatTypeInfo.INSTANCE_CHAT.b*255)..CB_DATA.T_INSTANCE_CHAT.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.GUILD.r*255,ChatTypeInfo.GUILD.g*255,ChatTypeInfo.GUILD.b*255)..CB_DATA.T_GUILD.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.YELL.r*255,ChatTypeInfo.YELL.g*255,ChatTypeInfo.YELL.b*255)..CB_DATA.T_YELL.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.WHISPER.r*255,ChatTypeInfo.WHISPER.g*255,ChatTypeInfo.WHISPER.b*255)..CB_DATA.T_WHISPER.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.OFFICER.r*255,ChatTypeInfo.OFFICER.g*255,ChatTypeInfo.OFFICER.b*255)..CB_DATA.T_OFFICER.."\124r",
	"\124cffffdfbf" .. SC_DATA2[1][4] .."\124r",
	"\124cffffdfbf" .. SC_DATA2[2][4] .."\124r",
	"\124cffffdfbf" .. SC_DATA2[3][4] .."\124r",
	"\124cffffdfbf" .. SC_DATA2[4][4] .."\124r",
	"\124cffffdfbf世\124r",
};
local INFO = {
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.SAY.r*255,ChatTypeInfo.SAY.g*255,ChatTypeInfo.SAY.b*255)..SAY.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.PARTY.r*255,ChatTypeInfo.PARTY.g*255,ChatTypeInfo.PARTY.b*255)..PARTY.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID.r*255,ChatTypeInfo.RAID.g*255,ChatTypeInfo.RAID.b*255)..RAID.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID_WARNING.r*255,ChatTypeInfo.RAID_WARNING.g*255,ChatTypeInfo.RAID_WARNING.b*255)..RAID_WARNING.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.INSTANCE_CHAT.r*255,ChatTypeInfo.INSTANCE_CHAT.g*255,ChatTypeInfo.INSTANCE_CHAT.b*255)..INSTANCE_CHAT.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.GUILD.r*255,ChatTypeInfo.GUILD.g*255,ChatTypeInfo.GUILD.b*255)..GUILD.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.YELL.r*255,ChatTypeInfo.YELL.g*255,ChatTypeInfo.YELL.b*255)..YELL.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.WHISPER.r*255,ChatTypeInfo.WHISPER.g*255,ChatTypeInfo.WHISPER.b*255)..WHISPER.."\124r",
	string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.OFFICER.r*255,ChatTypeInfo.OFFICER.g*255,ChatTypeInfo.OFFICER.b*255)..OFFICER.."\124r",
	"\124cffffdfbf" .. SC_DATA2[1][1] .."\124r",
	"\124cffffdfbf" .. SC_DATA2[2][1] .."\124r",
	"\124cffffdfbf" .. SC_DATA2[3][1] .."\124r",
	"\124cffffdfbf" .. SC_DATA2[4][1] .."\124r",
	"\124cffffdfbf大脚世界频道\124r",
};

local control_style = "CHAR";

local function SetStyle(i, style)
	if style == "CHAR" then
		if btn[i] then
			alaBaseBtn:ChangeBtnTexture(btn[i], "char", CHAR[i]);
		end
	elseif style == "CIRCLE" then
		if btn[i] then
			alaBaseBtn:ChangeBtnTexture(btn[i], ICON_PATH .. "channelBarCircle", nil, COLOR[i]);
		end
	elseif style == "SQUARE" then
		if btn[i] then
			alaBaseBtn:ChangeBtnTexture(btn[i], ICON_PATH .. "channelBarSquare", nil, COLOR[i]);
		end
	else
		return;
	end
end

toggle[1] = function(on)
	local idx = 1;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."SAY",
					"char",
					CHAR[1],
					nil,
					function(self,button)
						insertEditBox("/s ");
					end,
					{
						INFO[1],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[2] = function(on)
	local idx = 2;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."PARTY",
					"char",
					CHAR[2],
					nil,
					function(self,button)
						insertEditBox("/p ");
					end,
					{
						INFO[2],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[3] = function(on)
	local idx = 3;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."RAID",
					"char",
					CHAR[3],
					nil,
					function(self,button)
						insertEditBox("/raid ");
					end,
					{
						INFO[3],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[4] = function(on)
	local idx = 4;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."RW",
					"char",
					CHAR[4],
					nil,
					function(self,button)
						insertEditBox("/rw ");
					end,
					{
						INFO[4],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[5] = function(on)
	local idx = 5;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."INSTANCE_CHAT",
					"char",
					CHAR[5],
					nil,
					function(self,button)
						insertEditBox("/bg ");
					end,
					{
						INFO[5],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[6] = function(on)
	local idx = 6;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."GUILD",
					"char",
					CHAR[6],
					nil,
					function(self,button)
						insertEditBox("/g ");
					end,
					{
						INFO[6],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[7] = function(on)
	local idx = 7;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."YELL",
					"char",
					CHAR[7],
					nil,
					function(self,button)
						insertEditBox("/y ");
					end,
					{
						INFO[7],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[8] = function(on)
	local idx = 8;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."WHISPER",
					"char",
					CHAR[8],
					nil,
					function(self,button)
						insertEditBox("/w ");
					end,
					{
						INFO[8],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[9] = function(on)
	local idx = 9;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."OFFICER",
					"char",
					CHAR[9],
					nil,
					function(self,button)
						insertEditBox("/o ");
					end,
					{
						INFO[9],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[10] = function(on)
	local idx = 10;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."GENERAL",
					"char",
					CHAR[10],
					nil,
					function(self,button)
						local t = {GetChannelList()};
						for i = 1,#t/3 do
							if t[i*3-1] == SC_DATA2[1][1] then
								insertEditBox("/"..t[i*3-2].." ");
								return;
							end
						end
					end,
					{
						INFO[10],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[11] = function(on)
	local idx = 11;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."TRADE",
					"char",
					CHAR[11],
					nil,
					function(self,button)
						local t = {GetChannelList()};
						for i = 1,#t/3 do
							if t[i*3-1] == SC_DATA2[2][1] then
								insertEditBox("/"..t[i*3-2].." ");
								return;
							end
						end
					end,
					{
						INFO[11],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[12] = function(on)
	local idx = 12;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."LOCALDEFENSE",
					"char",
					INFO[12],
					nil,
					function(self,button)
						local t = {GetChannelList()};
						for i = 1,#t/3 do
							if t[i*3-1] == SC_DATA2[3][1] then
								insertEditBox("/"..t[i*3-2].." ");
								return;
							end
						end
					end,
					{
						INFO[12],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[13] = function(on)
	local idx = 13;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."LOOKINGFORGROUP",
					"char",
					CHAR[13],
					nil,
					function(self,button)
						local t = {GetChannelList()};
						for i = 1,#t/3 do
							if t[i*3-1] == SC_DATA2[4][1] then
								insertEditBox("/"..t[i*3-2].." ");
								return;
							end
						end
					end,
					{
						INFO[13],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end
toggle[14] = function(on)
	local idx = 14;
	if (shown[idx] and on) or (not shown[idx] and not on) then
		return
	end
	shown[idx] = on;
	if on then
		if btn[idx] then
			alaBaseBtn:AddBtn(btnPackIndex,nPrevShown(idx) + 1,btn[idx],true,false,true);
		else
			btn[idx] = alaBaseBtn:CreateBtn(
					btnPackIndex,
					nPrevShown(idx) + 1,
					"ChatBar_".."BFWORLD",
					"char",
					CHAR[14],
					nil,
					function(self,button)
						local t = {GetChannelList()};
						for i = 1,#t/3 do
							if t[i*3-1] == "大脚世界频道" then
								insertEditBox("/"..t[i*3-2].." ");
								return;
							end
						end
					end,
					{
						INFO[14],
					}
			);
		end
	else
		alaBaseBtn:RemoveBtn(btn[idx],true);
	end
end

FUNC.ON.channelBarChannel = function(idx)
	toggle[idx](true);
	SetStyle(idx, control_style);
end
FUNC.OFF.channelBarChannel = function(idx)
	toggle[idx](false)
end

local LCONFIG = L.CONFIG;
if not LCONFIG then
	return;
end
FUNC.INIT.channelBarChannel = function()
	COLOR = {
		ChatTypeInfo.SAY,
		ChatTypeInfo.PARTY,
		ChatTypeInfo.RAID,
		ChatTypeInfo.RAID_WARNING,
		ChatTypeInfo.INSTANCE_CHAT,
		ChatTypeInfo.GUILD,
		ChatTypeInfo.YELL,
		ChatTypeInfo.WHISPER,
		ChatTypeInfo.OFFICER,
		{ r = 1.0, g = 0.8745, b = 0.7490, },
		{ r = 1.0, g = 0.8745, b = 0.7490, },
		{ r = 1.0, g = 0.8745, b = 0.7490, },
		{ r = 1.0, g = 0.8745, b = 0.7490, },
		{ r = 1.0, g = 0.8745, b = 0.7490, },
	};
	CHAR = {
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.SAY.r*255,ChatTypeInfo.SAY.g*255,ChatTypeInfo.SAY.b*255)..CB_DATA.T_SAY.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.PARTY.r*255,ChatTypeInfo.PARTY.g*255,ChatTypeInfo.PARTY.b*255)..CB_DATA.T_PARTY.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID.r*255,ChatTypeInfo.RAID.g*255,ChatTypeInfo.RAID.b*255)..CB_DATA.T_RAID.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID_WARNING.r*255,ChatTypeInfo.RAID_WARNING.g*255,ChatTypeInfo.RAID_WARNING.b*255)..CB_DATA.T_RW.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.INSTANCE_CHAT.r*255,ChatTypeInfo.INSTANCE_CHAT.g*255,ChatTypeInfo.INSTANCE_CHAT.b*255)..CB_DATA.T_INSTANCE_CHAT.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.GUILD.r*255,ChatTypeInfo.GUILD.g*255,ChatTypeInfo.GUILD.b*255)..CB_DATA.T_GUILD.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.YELL.r*255,ChatTypeInfo.YELL.g*255,ChatTypeInfo.YELL.b*255)..CB_DATA.T_YELL.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.WHISPER.r*255,ChatTypeInfo.WHISPER.g*255,ChatTypeInfo.WHISPER.b*255)..CB_DATA.T_WHISPER.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.OFFICER.r*255,ChatTypeInfo.OFFICER.g*255,ChatTypeInfo.OFFICER.b*255)..CB_DATA.T_OFFICER.."\124r",
		"\124cffffdfbf" .. SC_DATA2[1][4] .."\124r",
		"\124cffffdfbf" .. SC_DATA2[2][4] .."\124r",
		"\124cffffdfbf" .. SC_DATA2[3][4] .."\124r",
		"\124cffffdfbf" .. SC_DATA2[4][4] .."\124r",
		"\124cffffdfbf世\124r",
	};
	INFO = {
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.SAY.r*255,ChatTypeInfo.SAY.g*255,ChatTypeInfo.SAY.b*255)..SAY.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.PARTY.r*255,ChatTypeInfo.PARTY.g*255,ChatTypeInfo.PARTY.b*255)..PARTY.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID.r*255,ChatTypeInfo.RAID.g*255,ChatTypeInfo.RAID.b*255)..RAID.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.RAID_WARNING.r*255,ChatTypeInfo.RAID_WARNING.g*255,ChatTypeInfo.RAID_WARNING.b*255)..RAID_WARNING.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.INSTANCE_CHAT.r*255,ChatTypeInfo.INSTANCE_CHAT.g*255,ChatTypeInfo.INSTANCE_CHAT.b*255)..INSTANCE_CHAT.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.GUILD.r*255,ChatTypeInfo.GUILD.g*255,ChatTypeInfo.GUILD.b*255)..GUILD.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.YELL.r*255,ChatTypeInfo.YELL.g*255,ChatTypeInfo.YELL.b*255)..YELL.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.WHISPER.r*255,ChatTypeInfo.WHISPER.g*255,ChatTypeInfo.WHISPER.b*255)..WHISPER.."\124r",
		string.format("\124cff%.2x%.2x%.2x",ChatTypeInfo.OFFICER.r*255,ChatTypeInfo.OFFICER.g*255,ChatTypeInfo.OFFICER.b*255)..OFFICER.."\124r",
		"\124cffffdfbf" .. SC_DATA2[1][1] .."\124r",
		"\124cffffdfbf" .. SC_DATA2[2][1] .."\124r",
		"\124cffffdfbf" .. SC_DATA2[3][1] .."\124r",
		"\124cffffdfbf" .. SC_DATA2[4][1] .."\124r",
		"\124cffffdfbf大脚世界频道\124r",
	};
	for i = 1, 13 do
		LCONFIG.channelBarChannel[i] = INFO[i];
	end
	if GetLocale() == "zhCN" then
		LCONFIG.channelBarChannel[14] = "\124cffffdfbf大脚世界频道\124r";
	end
end

FUNC.SETVALUE.channelBarStyle = function(style)
	if control_style ~= style then
		if style == "CHAR" then
			for i = 1, 14 do
				if btn[i] then
					alaBaseBtn:ChangeBtnTexture(btn[i], "char", CHAR[i]);
				end
			end
		elseif style == "CIRCLE" then
			for i = 1, 14 do
				if btn[i] then
					alaBaseBtn:ChangeBtnTexture(btn[i], ICON_PATH .. "channelBarCircle", nil, COLOR[i]);
				end
			end
		elseif style == "SQUARE" then
			for i = 1, 14 do
				if btn[i] then
					alaBaseBtn:ChangeBtnTexture(btn[i], ICON_PATH .. "channelBarSquare", nil, COLOR[i]);
				end
			end
		else
			return;
		end
		control_style = style;
	end
end
FUNC.INIT.channelBarStyle = function()
end
----------------------------------------------------------------------------------------------------
