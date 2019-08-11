
ZPerlConfig = nil
ZPerlConfig_Global = nil
ZPerlConfigNew = {
	["savedPositions"] = {
		["Swamp of Sorrows"] = {
			["Tagseven"] = {
				["XPerl_Player"] = {
					["top"] = 355.422207381402,
					["height"] = false,
					["left"] = 627.514656228101,
					["width"] = false,
				},
				["XPerl_Focus"] = {
					["top"] = 693.333408768973,
					["height"] = false,
					["left"] = 216.799978816509,
					["width"] = false,
				},
				["XPerl_PetTarget"] = {
					["top"] = 333.981726490059,
					["height"] = false,
					["left"] = 487.462790770824,
					["width"] = false,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 271.329377703507,
					["height"] = false,
					["left"] = 615.507417496487,
					["width"] = false,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 758.222276923392,
					["height"] = false,
					["left"] = 31.4074162394913,
					["width"] = false,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 676.518615722656,
					["height"] = 540,
					["left"] = 1329.40747070313,
					["width"] = 699.999938964844,
				},
				["XPerl_Target"] = {
					["top"] = 359.708811955621,
					["height"] = false,
					["left"] = 1178.7837200567,
					["width"] = false,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 349.526071318114,
					["height"] = false,
					["left"] = 1393.7413336866,
					["width"] = false,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 693.333368319556,
					["height"] = false,
					["left"] = 414.699962420124,
					["width"] = false,
				},
			},
		},
	},
	["ConfigVersion"] = "5.7.6 release",
	["global"] = {
		["highlight"] = {
			["enable"] = 1,
			["AGGRO"] = 1,
			["HOT"] = 1,
			["SHIELD"] = 1,
		},
		["showFD"] = 1,
		["highlightSelection"] = 1,
		["bar"] = {
			["fat"] = 1,
			["background"] = 1,
			["fadeTime"] = 0.5,
			["texture"] = {
				"Armory", -- [1]
				"Interface\\Addons\\Recount\\Textures\\statusbar\\Armory", -- [2]
			},
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["FadeAmount"] = 0.5,
				["item"] = "",
				["HealthLowPoint"] = 0.85,
			},
			["Main"] = {
				["enabled"] = true,
				["item"] = "",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
			["NameFrame"] = {
				["FadeAmount"] = 0.5,
				["item"] = "",
				["HealthLowPoint"] = 0.85,
			},
		},
		["showAFK"] = 1,
		["combatFlash"] = 1,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["raidpet"] = {
			["enable"] = 1,
		},
		["target"] = {
			["comboindicator"] = {
			},
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 23,
			},
			["portrait"] = 1,
			["combo"] = {
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["absorbs"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["enable"] = 1,
				["who"] = 3,
			},
			["raidIconAlternate"] = 1,
			["scale"] = 0.8953564453125,
			["threatMode"] = "portraitFrame",
			["values"] = 1,
			["healprediction"] = 1,
			["elite"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 17,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["enable"] = 1,
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
				{
					["enable"] = 1,
					["name"] = "DEATHKNIGHT",
				}, -- [10]
				{
					["enable"] = 1,
					["name"] = "MONK",
				}, -- [11]
				{
					["enable"] = 1,
					["name"] = "DEMONHUNTER",
				}, -- [12]
			},
			["healprediction"] = 1,
			["precisionPercent"] = 1,
			["anchor"] = "TOP",
			["size"] = {
				["width"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["precisionManaPercent"] = 1,
			["gap"] = 0,
			["manaPercent"] = 1,
			["titles"] = 1,
			["spacing"] = 0,
			["scale"] = 0.8,
			["absorbs"] = 1,
			["mana"] = 1,
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["right"] = 1,
				["size"] = 20,
				["inside"] = 1,
			},
			["percent"] = 1,
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
				1, -- [10]
				1, -- [11]
				1, -- [12]
			},
		},
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 23,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 17,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 0.337000012397766,
				["b"] = 0.301960784313726,
				["g"] = 0.250980392156863,
				["r"] = 0.250980392156863,
			},
			["reaction"] = {
				["tapped"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["none"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["neutral"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["unfriendly"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["friend"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["enemy"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
			["classbarBright"] = 1,
			["gradient"] = {
				["s"] = {
					["a"] = 1,
					["b"] = 0.25,
					["g"] = 0.25,
					["r"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["b"] = 0.1,
					["g"] = 0.1,
					["r"] = 0.1,
				},
			},
			["frame"] = {
				["a"] = 0.533979654312134,
				["b"] = 0.0509803921568627,
				["g"] = 0.0745098039215686,
				["r"] = 0.0745098039215686,
			},
			["class"] = 1,
			["bar"] = {
				["rage"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["absorb"] = {
					["a"] = 0.7,
					["b"] = 0.7,
					["g"] = 0.33,
					["r"] = 0.14,
				},
				["fury"] = {
					["b"] = 0.992,
					["g"] = 0.259,
					["r"] = 0.788,
				},
				["mana"] = {
					["b"] = 1,
					["g"] = 0,
					["r"] = 0,
				},
				["healthEmpty"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["pain"] = {
					["b"] = 0,
					["g"] = 0.611,
					["r"] = 1,
				},
				["healprediction"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 0,
				},
				["healthFull"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["maelstrom"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0,
				},
				["focus"] = {
					["b"] = 0.25,
					["g"] = 0.5,
					["r"] = 1,
				},
				["runic_power"] = {
					["b"] = 1,
					["g"] = 0.82,
					["r"] = 0,
				},
				["insanity"] = {
					["b"] = 0.8,
					["g"] = 0,
					["r"] = 0.4,
				},
				["energy"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["lunar"] = {
					["b"] = 0.9,
					["g"] = 0.52,
					["r"] = 0.3,
				},
			},
		},
		["minimap"] = {
			["enable"] = 1,
			["radius"] = 78,
			["pos"] = 186,
		},
		["xperlOldroleicons"] = 1,
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 23,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 17,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healprediction"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["pet"] = {
			["threat"] = 1,
			["portrait"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 18,
			},
			["buffs"] = {
				["maxrows"] = 2,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 18,
			},
			["castBar"] = {
				["enable"] = 1,
			},
			["absorbs"] = 1,
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["healprediction"] = 1,
			["level"] = 1,
			["values"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["partypet"] = {
			["healerMode"] = {
				["type"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 12,
				["castable"] = 0,
			},
			["enable"] = 1,
			["mana"] = 1,
			["scale"] = 0.7,
			["size"] = {
				["width"] = 0,
			},
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 25,
			},
			["portrait"] = 1,
			["scale"] = 0.9,
			["castBar"] = {
				["enable"] = 1,
			},
			["fullScreen"] = {
				["lowHP"] = 30,
				["highHP"] = 40,
			},
			["hitIndicator"] = 1,
			["dockRunes"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["pvpIcon"] = 1,
			["lockRunes"] = 1,
			["showRunes"] = 1,
			["healprediction"] = 1,
			["threatMode"] = "portraitFrame",
			["healerMode"] = {
				["type"] = 1,
			},
			["absorbs"] = 1,
			["values"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["wrap"] = 1,
				["flash"] = 1,
				["count"] = 40,
				["maxrows"] = 2,
				["rows"] = 2,
				["hideBlizzard"] = 0,
				["cooldown"] = 1,
				["size"] = 25,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["transparency"] = {
			["text"] = 1,
			["frame"] = 1,
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["party"] = {
			["debuffs"] = {
				["halfSize"] = 1,
				["below"] = 1,
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 32,
			},
			["portrait"] = 1,
			["enable"] = 1,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["inRaid"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.8,
			["healprediction"] = 1,
			["hitIndicator"] = 1,
			["target"] = {
				["enable"] = 1,
				["size"] = 120,
				["large"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["values"] = 1,
			["absorbs"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["focus"] = {
			["comboindicator"] = {
				["enable"] = 1,
			},
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["absorbs"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["scale"] = 0.895350189208984,
			["threatMode"] = "portraitFrame",
			["values"] = 1,
			["healprediction"] = 1,
			["elite"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["buffs"] = {
			["countdown"] = 1,
			["countdownStart"] = 20,
			["cooldownAny"] = 1,
			["cooldown"] = 1,
			["omnicc"] = 1,
		},
		["maximumScale"] = 1.5,
		["optionsColour"] = {
			["b"] = 0.2,
			["g"] = 0.2,
			["r"] = 0.7,
		},
	},
}
ZPerlConfigSavePerCharacter = nil
ZPerlImportDone = nil
