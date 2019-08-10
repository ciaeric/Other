local C, G = unpack(select(2, ...))

if not C.objectFrame then return end

-- [[ Anchor ]] --

local QWF = QuestWatchFrame

local function SetQWF()
	-- parent frame
	QWF:SetClampedToScreen(true)
	QWF:ClearAllPoints()
	QWF:SetPoint(unpack(C.WatchFrame))
	QWF:SetSize(C.Width, C.Height)
	QWF:SetMovable(true)
	QWF:SetUserPlaced(true)	
end

-- [[ Skin ]] --

local function SetQWFText()
	local HeaderBar = CreateFrame("StatusBar", nil, QWF)
	local HeaderText = HeaderBar:CreateFontString(nil, "OVERLAY")
	
	-- title line
	HeaderBar:SetSize(QWF:GetWidth(), 2)
	HeaderBar:SetPoint("TOPLEFT", QWF, 0, -2)
	HeaderBar:SetStatusBarTexture(G.Tex)
	HeaderBar:SetStatusBarColor(G.Ccolors.r, G.Ccolors.g, G.Ccolors.b)

	sd = CreateFrame("Frame", nil, HeaderBar)
	sd:SetPoint("TOPLEFT", -3, 3)
	sd:SetPoint("BOTTOMRIGHT", 3, -3)
	sd:SetFrameStrata(HeaderBar:GetFrameStrata())
	sd:SetFrameLevel(0)
	sd:SetBackdrop({edgeFile = G.glow, edgeSize = 3,})
	sd:SetBackdropBorderColor(0, 0, 0)

	-- title
	HeaderText:SetFont(G.font, G.obfontSize, G.obfontFlag)
	HeaderText:SetTextColor(G.Ccolors.r, G.Ccolors.g, G.Ccolors.b)
	HeaderText:SetShadowOffset(0, 0)
	HeaderText:SetPoint("LEFT", HeaderBar, "LEFT", -2, G.obfontSize)
	HeaderText:SetText(CURRENT_QUESTS)
	
	-- Change font of watched quests
	for i = 1, 30 do
		local Line = _G["QuestWatchLine"..i]

		Line:SetFont(G.font, G.obfontSize-2, G.obfontFlag)
		Line:SetHeight(G.obfontSize)
		Line:SetShadowOffset(0, 0)
		Line:SetWidth(QWF:GetWidth()+20)
	end
end

local function loadAddon()
	SetQWF()
	SetQWFText()
end

local function eventHandler(self, event, ...)
	loadAddon() 
end 

local EVENT = CreateFrame("FRAME", "defaultsetting")
	EVENT:RegisterEvent("PLAYER_LOGIN")
	EVENT:RegisterEvent("PLAYER_ENTERING_WORLD")
	EVENT:RegisterEvent("VARIABLES_LOADED")
	EVENT:SetScript("OnEvent", eventHandler)
