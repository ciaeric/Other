--[[--

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
local SC_DATA1=L.SC_DATA1;
local SC_DATA2=L.SC_DATA2;
if not SC_DATA1 or not SC_DATA2 then return;end
----------------------------------------------------------------------------------------------------
if not __alaBase then
	return;
end
--------------------------------------------------short Channel Name
local control_shortChannelName=false;
local backup_shortChannelName={};
local chatFrame={};
for i=1,NUM_CHAT_WINDOWS do
	chatFrame[i]=_G["ChatFrame"..i];
end
eventCall("PLAYER_LOGOUT",
	function(_,event)
		if control_shortChannelName then
			for i=1,NUM_CHAT_WINDOWS do
				if i~=2 then
					local f=chatFrame[i];
					for _,c in pairs(SC_DATA2) do
						for k,v in pairs(f.channelList) do
							if v==c[4] then
								f.channelList[k]=c[1];
							end
						end
					end
				end
			end
		end
	end
);
hooksecurefunc(SlashCmdList,"JOIN",
	function(msg)
		if  control_shortChannelName then
			local c=string.gsub(msg,"%s*([^%s]+).*","%1");
			for k,v in pairs(DEFAULT_CHAT_FRAME.channelList) do
				if v==c then
					for _,ct in pairs(SC_DATA2) do
						if string.sub(c,ct[2],ct[3])==ct[1] then
							DEFAULT_CHAT_FRAME.channelList[k]=ct[4];
						end
					end
					break;
				end
			end
		end
	end
);
hooksecurefunc(SlashCmdList,"LEAVE",
	function(msg)
		local c=string.gsub(msg,"%s*([^%s]+).*","%1");
		if  control_shortChannelName then
			local s=nil;
			for k,v in pairs(SC_DATA2) do
				if c==v[1] then
					s=v[4];
				end
			end
			for i=1,NUM_CHAT_WINDOWS do
				if i~=2 then
					local f=chatFrame[i];
					for k,v in pairs(f.channelList) do
						if v==s or v==c then
							table.remove(f.channelList,k);
							break;
						end
					end
				end
			end
		else
			for i=1,NUM_CHAT_WINDOWS do
				if i~=2 then
					local f=chatFrame[i];
					for k,v in pairs(f.channelList) do
						if v==c then
							table.remove(f.channelList,k);
							break;
						end
					end
				end
			end
		end
	end
);
hooksecurefunc("ChatFrame_AddChannel",
	function(self,c)
		if control_shortChannelName then
			for k,v in pairs(self.channelList) do
				if v==c then
					for _,ct in pairs(SC_DATA2) do
						if string.sub(c,ct[2],ct[3])==ct[1] then
							local sc=ct[4];
							for i=1,k do
								if self.channelList[i]==ct[4] then
									sc=nil;
									break;
								end
							end
							self.channelList[k]=sc;
							break;
						end
					end
					break;
				end
			end
		end
	end
);
hooksecurefunc("ChatFrame_RemoveChannel",
	function(self,c)
		if control_shortChannelName then
			for k,v in pairs(SC_DATA2) do
				if string.sub(c,v[2],v[3])==v[1] then
					c=v[4];
					break;
				end
			end
			for k,v in pairs(self.channelList) do
				if v==c then
					self.channelList[k]=nil;
					break;
				end
			end
		end
	end
);
hooksecurefunc("CreateChatChannelList",
	function(self,...)
		if control_shortChannelName then
			local channelList=FCF_GetCurrentChatFrame().channelList;
			local zoneChannelList=FCF_GetCurrentChatFrame().zoneChannelList;
			for _,v in pairs(CHAT_CONFIG_CHANNEL_LIST) do
				for _,c in pairs(SC_DATA2) do
				    if v.channelName and string.sub(v.channelName,c[2],c[3])==c[1] then
					    --v.channelName=c[4];
						--v.text=string.sub(v.text,1,2)..c[4];
						local checked=nil;
					    if (channelList) then
					    	for _,v2 in pairs(channelList) do
					    		if (v2==c[4] or v2==c[1]) then
					    			checked=1;
									break;
					    		end
					    	end
					    end
					    if (zoneChannelList) then
					    	for _,v2 in pairs(zoneChannelList) do
					    		if (v2==c[4] or v2==c[1]) then
					    			checked=1;
									break;
					    		end
					    	end
					    end
						v.checked=checked;
						break;
					end
				end
			end
		end
	end
);
local function _cf_short_channel_name(self,event,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,...)--main function
	for k,v in pairs(SC_DATA2) do
		if arg9==v[1] or string.sub(arg9,v[2],v[3])==v[1] then
			arg9=v[4];
			arg4=arg8..". "..arg9;
			break;
		end
	end
	return false,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,...;
end
local function shortChannelName_ToggleOn()
	if control_shortChannelName then
		return;
	end
	control_shortChannelName=true;
	for i=1,NUM_CHAT_WINDOWS do
		if i~=2 then
			local f=chatFrame[i];
			for _,c in pairs(SC_DATA2) do
				for k,v in pairs(f.channelList) do
					if string.sub(v,c[2],c[3])==c[1] then
						f.channelList[k]=c[4];
					end
				end
			end
		end
	end
	for get,str in pairs(SC_DATA1) do
		backup_shortChannelName[get]=_G[get];
		_G[get]=str;
	end
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL",_cf_short_channel_name);
	return control_shortChannelName;
end
local function shortChannelName_ToggleOff()
	if not control_shortChannelName then
		return;
	end
	control_shortChannelName=false;
	for i=1,NUM_CHAT_WINDOWS do
		if i~=2 then
			local f=chatFrame[i];
			for _,c in pairs(SC_DATA2) do
				for k,v in pairs(f.channelList) do
					if v==c[4] then
						f.channelList[k]=c[1];
					end
				end
			end
		end
	end
	for get,str in pairs(backup_shortChannelName) do
		_G[get]=str;
	end
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_CHANNEL",_cf_short_channel_name);
	return control_shortChannelName;
end
FUNC.ON.shortChannelName=shortChannelName_ToggleOn;
FUNC.OFF.shortChannelName=shortChannelName_ToggleOff;
--------------------------------------------------filter questAnn
local control_filterQuestAnn=false;
local function _cf_filter_quest_ann(self,event,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,...)
	local msg,sender,line=arg1,arg2,arg11;
	if string.find(msg,"^大脚任务进度提示:") or string.find(msg,"^【网.易.有.爱】") then
		return true;
	end
	return false,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,...;
end
local function filterQuestAnn_ToggleOn()
	if control_filterQuestAnn then
		return;
	end
	control_filterQuestAnn=true;
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT",_cf_filter_quest_ann);
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER",_cf_filter_quest_ann);
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY",_cf_filter_quest_ann);
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER",_cf_filter_quest_ann);
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID",_cf_filter_quest_ann);
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER",_cf_filter_quest_ann);
	return control_filterQuestAnn;
end
local function filterQuestAnn_ToggleOff()
	if not control_filterQuestAnn then
		return;
	end
	control_filterQuestAnn=false;
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_INSTANCE_CHAT",_cf_filter_quest_ann);
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER",_cf_filter_quest_ann);
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_PARTY",_cf_filter_quest_ann);
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_PARTY_LEADER",_cf_filter_quest_ann);
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_RAID",_cf_filter_quest_ann);
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_RAID_LEADER",_cf_filter_quest_ann);
	return control_filterQuestAnn;
end
FUNC.ON.filterQuestAnn=filterQuestAnn_ToggleOn;
FUNC.OFF.filterQuestAnn=filterQuestAnn_ToggleOff;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--colorNameByClass
--Chat_ShouldColorChatByClass
local __Chat_ShouldColorChatByClass = Chat_ShouldColorChatByClass;
local Chat_ShouldColorChatByClass_AlywaysOn = function() return true;end
local function ColorNameByClass_ToggleOn()
	Chat_ShouldColorChatByClass = Chat_ShouldColorChatByClass_AlywaysOn;
end
local function ColorNameByClass_ToggleOff()
	Chat_ShouldColorChatByClass = __Chat_ShouldColorChatByClass;
end
FUNC.ON.ColorNameByClass = ColorNameByClass_ToggleOn;
FUNC.OFF.ColorNameByClass = ColorNameByClass_ToggleOff;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
local ICON_PATH="Interface\\AddOns\\alaChat_Classic\\icon\\";
local bfwName="大脚世界频道";

--大脚世界频道开关按钮
local control_bfWorld_Ignore_Switch=false;
local control_bfWorld_Ignore=false;
local bfwBtn=nil;
local function find_bfw()
	local t={GetChannelList()};
	for i=1,#t/3 do
		if t[i*3-1]==bfwName then
			return t[i*3-2];
		end
	end
	return -1;
end
local function _cf_bgWorld_Toggle(self,event,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,...)
	if control_bfWorld_Ignore and control_bfWorld_Ignore_Switch then
		local bfWorldID=find_bfw();
		if bfWorldID>0 then
			local msg,sender,channelID,channel,line=arg1,arg2,arg8,arg9,arg11;
			if bfWorldID==channelID then
				return true;
			end
		end
	end
	return false,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,...;
end
local function bfWorld_Ignore_ToggleOn()
	control_bfWorld_Ignore=true;
	if not control_bfWorld_Ignore_Switch then
		return;
	end
	if GetLocale()=="zhCN" then
		if bfwBtn then
			bfwBtn:SetNormalTexture(ICON_PATH.."bfw-disabled.blp");
			bfwBtn:SetPushedTexture(ICON_PATH.."bfw-disabled-down.blp");
		end
	end
end
local function bfWorld_Ignore_ToggleOff()
	control_bfWorld_Ignore=false;
	if not control_bfWorld_Ignore_Switch then
		return;
	end
	if GetLocale()=="zhCN" then
		if find_bfw()<0 then
			--JoinChannelByName(bfwName);
			--SlashCmdList["JOIN"](bfwName,ChatFrame1EditBox);
			--delayCall(SlashCmdList["JOIN"],4,false,bfwName,ChatFrame1EditBox);
			if not select(2,JoinPermanentChannel(bfwName,nil,DEFAULT_CHAT_FRAME:GetID(),1)) then
				delayCall(JoinPermanentChannel,4,false,bfwName,nil,DEFAULT_CHAT_FRAME:GetID(),1);
				delayCall(ChatFrame_AddChannel,4.5,false,DEFAULT_CHAT_FRAME,bfwName);
			end
			ChatFrame_AddChannel(DEFAULT_CHAT_FRAME,bfwName);
		end
		if bfwBtn then
			bfwBtn:SetNormalTexture(ICON_PATH.."bfw.blp");
			bfwBtn:SetPushedTexture(ICON_PATH.."bfw-down.blp");
		end
	end
end
--alaChatConfig.bfWorld_Ignore

local function bfWorld_Ignore_Init()
	if GetLocale()=="zhCN" then
		ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL",_cf_bgWorld_Toggle);
		if alaChatConfig then
			bfwBtn=CreateFrame("Button","_alaChat_bfwBtn_bfwToggle");
			bfwBtn:SetWidth(28);
			bfwBtn:SetHeight(28);
			bfwBtn:SetNormalTexture(ICON_PATH.."bfw.blp");
			bfwBtn:SetPushedTexture(ICON_PATH.."bfw-down.blp");
			bfwBtn:SetHighlightTexture(ICON_PATH.."bfw-highlight.blp");
			bfwBtn:GetHighlightTexture():SetBlendMode("ADD");
			bfwBtn:SetAlpha(0.75);
			bfwBtn:SetFrameLevel(ChatFrame1:GetFrameLevel()+1);
			bfwBtn:SetMovable(false);
			bfwBtn:EnableMouse(true);
			bfwBtn:ClearAllPoints();
			bfwBtn:SetPoint("TOPRIGHT",ChatFrame1,"TOPRIGHT",-4,-4);
			bfwBtn:RegisterForClicks("LeftButtonUp","RightButtonUp");
			bfwBtn:SetScript("OnClick",function()
					if control_bfWorld_Ignore then
						bfWorld_Ignore_ToggleOff();
						alaChatConfig.bfWorld_Ignore=false;
					else
						bfWorld_Ignore_ToggleOn();
						alaChatConfig.bfWorld_Ignore=true;
					end
				end);
			bfwBtn._timer=0;
			bfwBtn._counting=false;
			bfwBtn._fadding=false;
			bfwBtn._faddingAlpha=0.75;
			bfwBtn:SetScript("OnUpdate",function(_,elapsed)
					if bfwBtn._counting then
						bfwBtn._timer=bfwBtn._timer-elapsed;
						if bfwBtn._timer<=0 then
							bfwBtn._fadding=true;
							bfwBtn._counting=false;
						end
					end
					if bfwBtn._fadding then
						bfwBtn._faddingAlpha=bfwBtn._faddingAlpha-elapsed*0.5;
						if bfwBtn._faddingAlpha<=0.25 then
							bfwBtn:SetAlpha(0.25);
							bfwBtn._fadding=false;
						else
							bfwBtn:SetAlpha(bfwBtn._faddingAlpha);
						end
					end
				end)
			bfwBtn:SetScript("OnEnter",function()
					bfwBtn._timer=1;
					bfwBtn._counting=false;
					bfwBtn:SetAlpha(0.75);
					bfwBtn._fadding=false;
					bfwBtn._faddingAlpha=0.75;
				end)
			bfwBtn:SetScript("OnLeave",function()
					bfwBtn._timer=1;
					bfwBtn._counting=true;
					bfwBtn._fadding=false;
					bfwBtn._faddingAlpha=0.75
				end)
			bfwBtn:Show();
		end
	end
end

if GetLocale()=="zhCN" then

	FUNC.ON.bfWorld_Ignore=bfWorld_Ignore_ToggleOn;
	FUNC.OFF.bfWorld_Ignore=bfWorld_Ignore_ToggleOff;
	FUNC.INIT.bfWorld_Ignore=bfWorld_Ignore_Init;

	FUNC.ON.bfWorld_Ignore_Switch=function()
		if bfwBtn then
			bfwBtn:Show();
			control_bfWorld_Ignore_Switch=true;
			if control_bfWorld_Ignore then
				bfWorld_Ignore_ToggleOn();
			else
				bfWorld_Ignore_ToggleOff();
			end
		end
	end;
	FUNC.OFF.bfWorld_Ignore_Switch=function()
		if bfwBtn then
			bfwBtn:Hide();
			control_bfWorld_Ignore_Switch=false;
		end
	end
	--FUNC.INIT.bfWorld_Ignore_Switch;
	FUNC.SETVALUE.bfWorld_Ignore_BtnSize=function(size,init)
		if bfwBtn then
			bfwBtn:SetSize(size,size);
		end
	end

end
----------------------------------------------------------------------------------------------------
