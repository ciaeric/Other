local EKMinimap, ns = ...
	ns[1] = {} -- C, config
	ns[2] = {} -- G, globals (Optionnal)

local C, G = unpack(select(2, ...))

-- alt+右鍵按住移動，/rm 重置小地圖位置，滾輪縮放區域，alt滾輪縮放大小
-- alt+right click to drag, /rm reset minimap position, scroll to scale zone, alt+scroll to scale minimap frame

-- [[ Global ]] --

	C.objectFrame = true	-- Style Objetc frame
	C.clickMenu = true		-- Minimap clickmenu

-- [[ Textures ]] --

	G.Tex = "Interface\\Buttons\\WHITE8x8"
	G.glow = "Interface\\addons\\EKMinimap\\Media\\glow"
	G.mail = "Interface\\AddOns\\EKMinimap\\Media\\mail.tga"
	G.report = "Interface\\HelpFrame\\HelpIcon-ReportLag.blp"
	G.Ccolors = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[select(2,UnitClass("player"))] -- class color / 職業顏色

-- [[ Fonts ]] --

	G.font = STANDARD_TEXT_FONT		-- 字體 / font (or use"GameFontHighlight:GetFont()"to get default game font
	
	-- minimap
	G.fontSize = 14
	G.fontFlag = "THINOUTLINE"
	
	-- objectframe
	G.obfontSize = 18
	G.obfontFlag = "OUTLINE"

-- [[ Config ]] --

	-- minimap
	C.scale = 1  					-- 縮放 / Scale
	C.anchor = "TOPRIGHT"			-- 錨點 / Anchor "TOPLEFT" "TOPRIGHT" "BOTTOMLEFT" etc.
	C.Point = {-10, -10}			-- 位置 / Position

	-- objectframe
	C.Height = 600
	C.Width = 200
	C.WatchFrame = {"TOPLEFT", Minimap, "BOTTOMLEFT", -60, -60}
	
-- [[ Credit ]] --

	-- Felix S., sakaras, ape47, iMinimap by Chiril, ooMinimap by Ooglogput, intMinimap by Int0xMonkey
	-- DifficultyID list
	-- https://wow.gamepedia.com/DifficultyID
	-- rStatusButton by zork
	-- https://www.wowinterface.com/downloads/info24772-rStatusButton.html
	-- Hide order hall bar
	-- https://github.com/destroyerdust/Class-Hall
	