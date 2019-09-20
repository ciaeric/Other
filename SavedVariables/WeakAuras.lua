
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["能量刺激"] = {
			[13750] = 136206,
		},
		["Adrenaline Rush"] = {
			[13750] = 136206,
		},
	},
	["displays"] = {
		["Sprint"] = {
			["glow"] = false,
			["glowLength"] = 10,
			["yOffset"] = -73,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["icon"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["glowXOffset"] = 0,
			["selfPoint"] = "CENTER",
			["auto"] = true,
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["parent"] = "Classic Rogue HUD by Denzo",
			["glowLines"] = 8,
			["keepAspectRatio"] = false,
			["glowFrequency"] = 0.25,
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["remaining"] = "5",
						["ownOnly"] = true,
						["use_specific_unit"] = false,
						["remaining_operator"] = "<",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 2983,
						["buffShowOn"] = "showOnMissing",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = false,
						["realSpellName"] = "Sprint",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["use_absorbMode"] = true,
						["names"] = {
							"Marked for Death", -- [1]
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["width"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["zoom"] = 0,
			["progressPrecision"] = 4,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Sprint",
			["xOffset"] = 49,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["authorOptions"] = {
			},
			["uid"] = "D88UaF1xnJQ",
			["inverse"] = false,
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[21] = true,
						[20] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Evasion"] = {
			["glow"] = false,
			["glowLength"] = 10,
			["yOffset"] = -73,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["auto"] = true,
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["progressPrecision"] = 4,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["glowLines"] = 8,
			["parent"] = "Classic Rogue HUD by Denzo",
			["glowFrequency"] = 0.25,
			["authorOptions"] = {
			},
			["glowXOffset"] = 0,
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"Marked for Death", -- [1]
						},
						["remaining"] = "110",
						["duration"] = "1",
						["use_specific_unit"] = false,
						["remaining_operator"] = "<",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 5277,
						["buffShowOn"] = "showOnMissing",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = false,
						["realSpellName"] = "Evasion",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["config"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[21] = true,
						[20] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["desaturate"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Evasion",
			["glowYOffset"] = 0,
			["alpha"] = 1,
			["width"] = 40,
			["xOffset"] = 0,
			["uid"] = "p(uG)wZJDnx",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Bleeds (DB)"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "_G['GarroteDB'] = {}\n_G['RuptureDB'] = {}",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED PLAYER_TARGET_CHANGED",
						["names"] = {
						},
						["event"] = "Health",
						["spellIds"] = {
						},
						["custom"] = "function(event, _, type, _, src, _, _, _, dest, _, _, _, spellId)\n    if event ~= \"COMBAT_LOG_EVENT_UNFILTERED\" then return end\n    \n    if src ~= UnitGUID(\"player\") then return end\n    \n    -- Check for Nightstalker rupture\n    if IsPlayerSpell(14062) or IsPlayerSpell(200806) then\n        \n        --init table for target on applying rupture\n        if type == \"SPELL_CAST_SUCCESS\" and spellId == 1943 then\n            if (_G['RuptureDB'][dest] == nil) then\n                _G['RuptureDB'][dest] = {dest, [\"NS\"] = false,\n                    [\"Exsang\"] = false}\n            else\n                _G['RuptureDB'][dest][\"Exsang\"] = false\n            end\n            \n            -- set Nightstalker bool\n            if IsStealthed() then\n                _G['RuptureDB'][dest][\"NS\"] = true\n            else\n                _G['RuptureDB'][dest][\"NS\"] = false\n            end\n            \n        elseif type == \"SPELL_AURA_REMOVED\" and spellId ==  1943 then\n            \n            _G['RuptureDB'][dest] = nil\n        end\n        \n    end\n    \n    -- Check for exanguinate\n    if type == \"SPELL_CAST_SUCCESS\" and spellId == 200806 then\n        if (_G['RuptureDB'][dest] ~= nil) then\n            _G['RuptureDB'][dest][\"Exsang\"] = true\n        end\n    end    \n    \n    -- Check for subterfuge garrote\n    if type == \"SPELL_AURA_APPLIED\" or  type == \"SPELL_CAST_SUCCESS\" then\n        if spellId == 703 then\n            if IsStealthed() or UnitBuff(\"player\", GetSpellInfo(108208))\n            then\n                _G['GarroteDB'][dest] =true \n            else\n                _G['GarroteDB'][dest] = nil\n                \n            end\n        end\n    elseif type == \"SPELL_AURA_REMOVED\" and spellId == 703 then\n        _G['GarroteDB'][dest] = nil\n    end\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 23,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 4,
			["font"] = "Accidental Presidency",
			["version"] = 3,
			["height"] = 11.999991416931,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["semver"] = "1.0.2",
			["wordWrap"] = "WordWrap",
			["parent"] = "Classic Rogue HUD by Denzo",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["tocversion"] = 11302,
			["id"] = "Bleeds (DB)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 11.000016212463,
			["authorOptions"] = {
			},
			["uid"] = "H9wHfnSTUaP",
			["config"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
			},
			["selfPoint"] = "BOTTOM",
			["automaticWidth"] = "Auto",
		},
		["Energy Text"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "%p",
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Accidental Presidency",
			["sparkOffsetY"] = 2,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "fer28",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 11302,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "None",
			["color"] = {
				1, -- [1]
				0.96078431372549, -- [2]
				0.99607843137255, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["parent"] = "Classic Rogue HUD by Denzo",
			["sparkRotationMode"] = "MANUAL",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%p                    ",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["event"] = "Power",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["stacksFlags"] = "None",
			["internalVersion"] = 23,
			["sparkWidth"] = 15,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["text"] = true,
			["textSize"] = 14,
			["stickyDuration"] = false,
			["uid"] = "eCKKwVHTOO8",
			["spark"] = true,
			["version"] = 3,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = false,
			["timerFlags"] = "None",
			["anchorFrameType"] = "SCREEN",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontSize"] = 20,
			["height"] = 19.999952316284,
			["wordWrap"] = "WordWrap",
			["id"] = "Energy Text",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["justify"] = "CENTER",
			["borderSize"] = 1,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["customTextUpdate"] = "update",
			["sparkHeight"] = 40,
			["displayTextRight"] = "%p",
			["sparkRotation"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["semver"] = "1.0.2",
			["sparkHidden"] = "BOTH",
			["config"] = {
			},
			["frameStrata"] = 9,
			["width"] = 24.000047683716,
			["zoom"] = 0,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.60000002384186, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
			},
			["xOffset"] = 0,
			["borderOffset"] = 1,
		},
		["Energy"] = {
			["sparkWidth"] = 5,
			["borderBackdrop"] = "None",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["parent"] = "Classic Rogue HUD by Denzo",
			["xOffset"] = 0,
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["event"] = "Power",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["barColor"] = {
				0.29803921568628, -- [1]
				0.094117647058824, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["backgroundColor"] = {
				1, -- [1]
				0.84313725490196, -- [2]
				0.30980392156863, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["sparkOffsetY"] = 0,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["useAdjustededMax"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p                    ",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 14,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 25,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["config"] = {
			},
			["width"] = 242.5,
			["frameStrata"] = 4,
			["icon"] = false,
			["sparkHidden"] = "BOTH",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["icon_side"] = "LEFT",
			["spark"] = true,
			["sparkHeight"] = 35,
			["texture"] = "ElvUI Blank",
			["auto"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "Energy",
			["sparkRotationMode"] = "AUTO",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkOffsetX"] = 0,
			["uid"] = "MIQfOenGE19",
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["authorOptions"] = {
			},
		},
		["35 Energy"] = {
			["color"] = {
				1, -- [1]
				0.47450980392157, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 23,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["version"] = 3,
			["subRegions"] = {
			},
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["uid"] = "Uq(e5FoHNwH",
			["parent"] = "Classic Rogue HUD by Denzo",
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "35 Energy",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 9,
			["config"] = {
			},
			["rotation"] = 0,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["width"] = 2,
			["xOffset"] = -36,
		},
		["25 Energy"] = {
			["xOffset"] = -61,
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 23,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["version"] = 3,
			["subRegions"] = {
			},
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorMode"] = true,
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["config"] = {
			},
			["parent"] = "Classic Rogue HUD by Denzo",
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "25 Energy",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.015686274509804, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 2,
			["rotation"] = 0,
			["uid"] = "X4v3mVv9NE0",
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["frameStrata"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["Energy OOFC"] = {
			["sparkWidth"] = 5,
			["borderBackdrop"] = "None",
			["parent"] = "Classic Rogue HUD by Denzo",
			["auto"] = true,
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["barColor"] = {
				1, -- [1]
				0.66274509803922, -- [2]
				0.13333333333333, -- [3]
				0.40000003576279, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p                    ",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 14,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 25,
			["config"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "U(nBH0OFW3R",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 4,
			["icon"] = false,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "Energy OOFC",
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.2",
			["sparkHeight"] = 35,
			["texture"] = "ElvUI Blank",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
			["spark"] = false,
			["tocversion"] = 11302,
			["sparkHidden"] = "BOTH",
			["backgroundColor"] = {
				0.29803921568628, -- [1]
				0.094117647058824, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["alpha"] = 1,
			["width"] = 242.5,
			["sparkOffsetX"] = -0.5,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["event"] = "Power",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["sparkRotationMode"] = "AUTO",
		},
		["Garr On"] = {
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "shake",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["progressPrecision"] = 4,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						0.96862745098039, -- [1]
						0.9843137254902, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["auranames"] = {
							"Garrote", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["unevent"] = "auto",
						["names"] = {
							"Garrote", -- [1]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = ">",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
			["glowFrequency"] = 0.25,
			["glowLines"] = 8,
			["authorOptions"] = {
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["icon"] = true,
			["parent"] = "Classic Rogue HUD by Denzo",
			["uid"] = "WI0Yl1oihZX",
			["regionType"] = "icon",
			["glowLength"] = 10,
			["width"] = 40,
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Garr On",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 49,
			["conditions"] = {
			},
			["glowXOffset"] = 0,
			["glowBorder"] = false,
		},
		["AR On"] = {
			["glow"] = false,
			["authorOptions"] = {
			},
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
				},
			},
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowLength"] = 10,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"13750", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["type"] = "aura2",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Shadow Blades",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["names"] = {
							"Adrenaline Rush", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["spellName"] = 121471,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 121471,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -48,
			["glowFrequency"] = 0.25,
			["glowLines"] = 8,
			["progressPrecision"] = 4,
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["glowXOffset"] = 0,
			["selfPoint"] = "CENTER",
			["uid"] = "GDqnDLZfX7L",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["glowYOffset"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["semver"] = "1.0.2",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["id"] = "AR On",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Classic Rogue HUD by Denzo",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowBorder"] = false,
		},
		["CP1"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["xOffset"] = -98,
			["yOffset"] = -7,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["backgroundColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["parent"] = "Classic Rogue HUD by Denzo",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkOffsetX"] = 0,
			["barColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["version"] = 3,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%n",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 14,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "CP1",
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.2",
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Blank",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["sparkRotationMode"] = "AUTO",
			["alpha"] = 1,
			["width"] = 46,
			["authorOptions"] = {
			},
			["uid"] = "33O)3bBuB)1",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "power",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0.44999998807907, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "sub.5.border_color",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "power",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["desaturate"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "status",
						["use_combopoints"] = true,
						["power"] = "1",
						["power_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["combopoints_operator"] = ">=",
						["use_power"] = false,
						["custom_hide"] = "timed",
						["combopoints"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
		},
		["AR CD"] = {
			["glow"] = false,
			["glowLength"] = 10,
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["glowLines"] = 8,
			["xOffset"] = -49,
			["glowFrequency"] = 0.25,
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["regionType"] = "icon",
			["desaturate"] = true,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 3,
			["glowXOffset"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "AR CD",
			["width"] = 40,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["parent"] = "Classic Rogue HUD by Denzo",
			["uid"] = "22UGU8))kYP",
			["inverse"] = false,
			["progressPrecision"] = 4,
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["remaining"] = "160",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "status",
						["remaining_operator"] = "<",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "Adrenaline Rush",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 13750,
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["spellName"] = 121471,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["glowBorder"] = false,
		},
		["40 Energy"] = {
			["color"] = {
				0.82745098039216, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 23,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 3,
			["subRegions"] = {
			},
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
			["config"] = {
			},
			["parent"] = "Classic Rogue HUD by Denzo",
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "40 Energy",
			["xOffset"] = -24,
			["frameStrata"] = 9,
			["width"] = 2,
			["discrete_rotation"] = 0,
			["uid"] = "JICPxkceYD7",
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
			},
			["alpha"] = 1,
			["selfPoint"] = "CENTER",
		},
		["Vanish Ready"] = {
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -73,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glowLines"] = 8,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_unit"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Vanish",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["spellName"] = 1856,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 1856,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["glowFrequency"] = 0.25,
			["glowXOffset"] = 0,
			["desaturate"] = false,
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["xOffset"] = 98,
			["parent"] = "Classic Rogue HUD by Denzo",
			["regionType"] = "icon",
			["uid"] = "(OOThdVm)dl",
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["tocversion"] = 11302,
			["auto"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Vanish Ready",
			["glowYOffset"] = 0,
			["alpha"] = 1,
			["width"] = 40,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["glowLength"] = 10,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["glowBorder"] = false,
		},
		["Swing MH"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["yOffset"] = -22,
			["foregroundColor"] = {
				1, -- [1]
				0.58823529411765, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Swing Timer",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_hand"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 23,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["anchorFrameType"] = "SCREEN",
			["desc"] = "https://wago.io/c8AqTuJae",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 3,
			["subRegions"] = {
			},
			["height"] = 39,
			["parent"] = "Classic Rogue HUD by Denzo",
			["crop_y"] = 0.41,
			["fontSize"] = 12,
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["conditions"] = {
			},
			["startAngle"] = 0,
			["selfPoint"] = "CENTER",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura35",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["xOffset"] = -140,
			["blendMode"] = "BLEND",
			["config"] = {
			},
			["desaturateForeground"] = false,
			["slantMode"] = "INSIDE",
			["frameStrata"] = 1,
			["textureWrapMode"] = "CLAMP",
			["compress"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "Swing MH",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["alpha"] = 1,
			["width"] = 20,
			["authorOptions"] = {
			},
			["uid"] = "m3sF)UxOR93",
			["inverse"] = true,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["anchorPoint"] = "CENTER",
			["backgroundOffset"] = 2,
		},
		["CP4"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["authorOptions"] = {
			},
			["yOffset"] = -7,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["parent"] = "Classic Rogue HUD by Denzo",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "status",
						["use_combopoints"] = true,
						["power"] = "4",
						["power_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["combopoints_operator"] = ">=",
						["use_power"] = false,
						["custom_hide"] = "timed",
						["combopoints"] = "4",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["barColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["xOffset"] = 49,
			["icon"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%n",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 14,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["config"] = {
			},
			["uid"] = "kRMCSWxaa1s",
			["backgroundColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["width"] = 46,
			["frameStrata"] = 2,
			["sparkOffsetY"] = 0,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "CP4",
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.2",
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Blank",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["sparkRotationMode"] = "AUTO",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkOffsetX"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "power",
						["value"] = "4",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0.44999998807907, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "sub.5.border_color",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "4",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
		},
		["Gouge"] = {
			["glow"] = false,
			["xOffset"] = 0,
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["auto"] = true,
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["progressPrecision"] = 4,
			["parent"] = "Classic Rogue HUD by Denzo",
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowLines"] = 8,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowFrequency"] = 0.25,
			["desaturate"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "target",
						["remaining"] = "10",
						["duration"] = "1",
						["use_specific_unit"] = false,
						["remaining_operator"] = "<",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["spellName"] = 1776,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["buffShowOn"] = "showOnMissing",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = false,
						["realSpellName"] = "Gouge",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["names"] = {
							"Marked for Death", -- [1]
						},
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[21] = true,
						[20] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "H)SjGMI(ZbJ",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 40,
			["icon"] = true,
			["zoom"] = 0,
			["keepAspectRatio"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Gouge",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
			["glowLength"] = 10,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Vanish CD"] = {
			["glow"] = false,
			["authorOptions"] = {
			},
			["yOffset"] = -73,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glowScale"] = 1,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowXOffset"] = 0,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["glowLines"] = 8,
			["selfPoint"] = "CENTER",
			["glowFrequency"] = 0.25,
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
			},
			["url"] = "https://wago.io/c8AqTuJae/3",
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["progressPrecision"] = 4,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "10",
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["use_remaining"] = false,
						["remaining_operator"] = "<",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["type"] = "status",
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "Vanish",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 1856,
					},
					["untrigger"] = {
						["showOn"] = "showOnCooldown",
						["spellName"] = 1856,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["uid"] = "zN9dSpOwXOD",
			["regionType"] = "icon",
			["xOffset"] = 98,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "Vanish CD",
			["width"] = 40,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["parent"] = "Classic Rogue HUD by Denzo",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = true,
			["conditions"] = {
			},
			["glowLength"] = 10,
			["glowBorder"] = false,
		},
		["Blind"] = {
			["glow"] = false,
			["glowLength"] = 10,
			["yOffset"] = -72.999969482422,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["auto"] = true,
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Classic Rogue HUD by Denzo",
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["cooldownEdge"] = false,
			["glowLines"] = 8,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowFrequency"] = 0.25,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "target",
						["remaining"] = "110",
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["remaining_operator"] = "<",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 2094,
						["buffShowOn"] = "showOnMissing",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = false,
						["realSpellName"] = "Blind",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["use_absorbMode"] = true,
						["names"] = {
							"Marked for Death", -- [1]
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[21] = true,
						[20] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["uid"] = "RguwBXZmuII",
			["desaturate"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 40,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["progressPrecision"] = 4,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Blind",
			["xOffset"] = -98,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["glowXOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["Energy CBD"] = {
			["sparkWidth"] = 10,
			["modelIsUnit"] = false,
			["xOffset"] = 0,
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["backgroundColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 5,
			["scale"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "ElvUI Blank",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11302,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["model_x"] = 0,
			["customTextUpdate"] = "update",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["event"] = "Power",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							185422, -- [1]
							195627, -- [2]
							13750, -- [3]
							115192, -- [4]
							235027, -- [5]
							256735, -- [6]
							121153, -- [7]
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Shadow Dance", -- [1]
							"Opportunity", -- [2]
							"Adrenaline Rush", -- [3]
							"Subterfuge", -- [4]
							"Master Assassin's Initiative", -- [5]
							"Master Assassin", -- [6]
							"Blindside", -- [7]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 23,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p                     ",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 14,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 25,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["displayStacks"] = "%s",
			["parent"] = "Classic Rogue HUD by Denzo",
			["authorOptions"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["zoom"] = 0,
			["sparkOffsetX"] = 0,
			["model_z"] = 2,
			["borderInFront"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["icon_side"] = "LEFT",
			["rotation"] = 0,
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["icon"] = false,
			["stacksContainment"] = "INSIDE",
			["auto"] = true,
			["semver"] = "1.0.2",
			["id"] = "Energy CBD",
			["sparkHidden"] = "NEVER",
			["model_y"] = 0.5,
			["frameStrata"] = 2,
			["width"] = 242.5,
			["uid"] = "ecHIiUy)2uV",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.72549019607843, -- [1]
								0.56078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.72549019607843, -- [1]
								0.56078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0.44999998807907, -- [4]
							},
							["property"] = "barColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["model_path"] = "SPELLS/Fire_Stylized_var_1.m2",
			["config"] = {
			},
		},
		["ElvUI Skin"] = {
			["glow"] = false,
			["glowLength"] = 10,
			["yOffset"] = -244.63502502441,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local gmatch, trim = string.gmatch, string.trim\nlocal wipe = table.wipe\n\n\nlocal skinner = getglobal( \"waIconSkinTool\" )\n\nif not skinner then\n    skinner = {\n        blacklist = {},\n        children  = {},\n        backdrop  = {},\n    }\n    setglobal( \"waIconSkinTool\", skinner )\nelse\n    wipe( skinner.blacklist )\n    for token in gmatch( aura_env.config.exclusions, \"[^,]+\" ) do\n        token = trim( token )\n        skinner.blacklist[ token ] = true\n    end    \nend\n\nskinner.borderWidth = aura_env.config.bWidth or 1\nskinner.zoom        = aura_env.config.zoom or 0.3\nskinner.solid       = aura_env.config.solid or false\n\n\n-- Backdrop/Border Template\nskinner.backdrop.bgFile = nil\nskinner.backdrop.edgeFile = \"Interface/Buttons/WHITE8X8\"\nskinner.backdrop.tile = false\nskinner.backdrop.tileSize = 1\nskinner.backdrop.edgeSize = skinner.borderWidth or 1\nskinner.backdrop.insets = { left = 1, right = 1, top = 1, bottom = 1 }\n\n\nfunction skinner:InitTemplate( region )\n    local a = min( select( 4, region.icon:GetVertexColor() ), region.icon:GetAlpha() )            \n    if self.solid then a = a > 0 and 1 or a end\n    \n    region:SetBackdrop( self.backdrop )\n    region:SetBackdropBorderColor( 0, 0, 0, a )\n    \n    -- Preserve actual zoom setting, but account for \"Keep Aspect Ratio\"\n    local realZoom = region.zoom\n    \n    region.zoom = self.zoom\n    region:UpdateTexCoords()\n    region.zoom = realZoom\n    \n    self:HookIt( region )\n    \n    region.isSkinned = true\nend\n\n\nfunction skinner:RefreshTemplate( region )\n    if self.SkinIsRefreshing then return end\n    \n    if region.icon and region.isSkinned then\n        self.SkinIsRefreshing = true\n        \n        if self.blacklist[ region.id ] then\n            region:SetBackdrop( nil )\n            region:UpdateSize()\n            region.isSkinned = nil\n        else\n            local a = min( select( 4, region.icon:GetVertexColor() ), region.icon:GetAlpha() )            \n            if self.solid then a = a > 0 and 1 or a end\n            \n            region:SetBackdropBorderColor( 0, 0, 0, a )\n            \n            -- Preserve actual zoom setting, but account for \"Keep Aspect Ratio\"\n            local realZoom = region.zoom\n            \n            region.zoom = self.zoom\n            region:UpdateTexCoords()\n            region.zoom = realZoom\n        end\n        \n        self.SkinIsRefreshing = nil\n    end\nend\n\n\nfunction skinner:ApplyTemplate( region, cloneId )\n    local r = WeakAuras.GetRegion( region, cloneId )\n    \n    if r and r.regionType == \"icon\" then            \n        if r.isSkinned then\n            self:RefreshTemplate( r )\n        elseif not skinner.blacklist[ region ] then\n            self:InitTemplate( r )\n        end\n        \n    end\nend\n\n\n-- Our hook functions should refer to the skinner table, so that we can make changes without duplicating hooks.\nfunction skinner:OnSetRegion( data, cloneId )\n    if not data or not data.id then return end\n    self:ApplyTemplate( data.id, cloneId )\nend\n\n\nif not skinner.SetRegionIsHooked then\n    hooksecurefunc( WeakAuras, \"SetRegion\", function( ... )\n            skinner:OnSetRegion( ... )\n    end )\n    skinner.SetRegionIsHooked = true\nend\n\n\nfunction skinner:HookIt( region )\n    if not self.children[ region ] then\n        local rt = function( ... )\n            skinner:RefreshTemplate( ... )\n        end\n        \n        hooksecurefunc( region,      \"Color\",          rt )\n        hooksecurefunc( region,      \"SetAlpha\",       rt )\n        hooksecurefunc( region,      \"UpdateSize\",     rt )\n        \n        hooksecurefunc( region.icon, \"SetVertexColor\", rt )\n        \n        self.children[ region ] = true\n    end\nend\n\n\nlocal needsRefresh = true\n\nfunction skinner:SkinAllIcons()    \n    for aura, clones in pairs( WeakAuras.clones ) do\n        local r = WeakAuras.GetRegion( aura )\n        \n        if r and r.regionType == \"icon\" then\n            self:ApplyTemplate( aura )\n            \n            for cloneId, clone in pairs( clones ) do\n                self:ApplyTemplate( aura, cloneId )\n            end            \n        end\n    end\nend\n\nfunction aura_env.CheckLogin()\n    if WeakAuras.IsLoginFinished() and needsRefresh then\n        skinner:SkinAllIcons()        \n        needsRefresh = false\n        return\n    end\n    \n    C_Timer.After( 1, function ()\n            WeakAuras.ScanEvents( \"WA_LOGIN_FINISHED\" )\n    end )\nend",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glowScale"] = 1,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Classic Rogue HUD by Denzo",
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [1]
			},
			["height"] = 10,
			["glowLines"] = 8,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_unitisunit"] = true,
						["use_alwaystrue"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "member",
						["type"] = "custom",
						["use_specific_unit"] = true,
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["event"] = "Chat Message",
						["spellIds"] = {
						},
						["events"] = "WA_LOGIN_FINISHED",
						["use_absorbMode"] = true,
						["custom"] = "function ()\n    aura_env.CheckLogin()\n    return false\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "member",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["glowFrequency"] = 0.25,
			["icon"] = true,
			["conditions"] = {
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 4,
			["authorOptions"] = {
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 10,
					["step"] = 1,
					["width"] = 1,
					["min"] = 1,
					["name"] = "Border Width",
					["default"] = 1,
					["key"] = "bWidth",
					["desc"] = "Sets the border width (in pixels) for your skinned icon auras.  Default is 1.  Note that this will *NOT* impact spacing/positioning of icons in groups.",
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "solid",
					["width"] = 1,
					["name"] = "Solid Border",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "If checked, whenever an icon appears (even if it is 99% transparent), the border lines will be fully opaque.",
				}, -- [2]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 2,
					["step"] = 0.01,
					["width"] = 2,
					["min"] = 0,
					["name"] = "Zoom",
					["default"] = 0.3,
					["key"] = "zoom",
					["desc"] = "Any of your icon auras that have a zoom of 0 will instead be zoomed to this level.  Recommended:  0.3",
				}, -- [3]
				{
					["text"] = "",
					["type"] = "header",
					["useName"] = false,
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["name"] = "Exclusions",
					["default"] = "",
					["key"] = "exclusions",
					["length"] = 10,
					["desc"] = "Enter the names of any auras that you would like to exclude from the skinning process.  Any auras with these names, including clones, will not be reconfigured here.  Separate names with commas.",
					["useLength"] = false,
				}, -- [5]
			},
			["desaturate"] = false,
			["config"] = {
				["solid"] = false,
				["bWidth"] = 1,
				["zoom"] = 0.3,
				["exclusions"] = "",
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "ElvUI Skin",
			["width"] = 10,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["selfPoint"] = "CENTER",
			["uid"] = "4qhlIP81Mn7",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 134366,
			["glowXOffset"] = 0,
			["glowBorder"] = false,
		},
		["CP5"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["xOffset"] = 98,
			["yOffset"] = -7,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["backgroundColor"] = {
				1, -- [1]
				0.45098039215686, -- [2]
				0.17254901960784, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["parent"] = "Classic Rogue HUD by Denzo",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkOffsetX"] = 0,
			["barColor"] = {
				1, -- [1]
				0.45098039215686, -- [2]
				0.17254901960784, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["version"] = 3,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%n",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 14,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "CP5",
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.2",
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Blank",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["sparkRotationMode"] = "AUTO",
			["alpha"] = 1,
			["width"] = 45,
			["authorOptions"] = {
			},
			["uid"] = "XushsZFI9yA",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0.44999998807907, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "sub.5.border_color",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "5",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.45098039215686, -- [2]
								0.17254901960784, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.45098039215686, -- [2]
								0.17254901960784, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["desaturate"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "status",
						["use_combopoints"] = true,
						["power"] = "5",
						["power_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["combopoints_operator"] = ">=",
						["use_power"] = false,
						["custom_hide"] = "timed",
						["combopoints"] = "5",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
		},
		["Rup On"] = {
			["glow"] = false,
			["glowLength"] = 10,
			["customText"] = "",
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowXOffset"] = 0,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["glowLines"] = 8,
			["xOffset"] = 98,
			["glowFrequency"] = 0.25,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_combat"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
			},
			["url"] = "https://wago.io/c8AqTuJae/3",
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["progressPrecision"] = 4,
			["desaturate"] = false,
			["uid"] = "CNM5qK(9rMP",
			["regionType"] = "icon",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "6",
						["buffShowOn"] = "showOnActive",
						["auranames"] = {
							"Rupture", -- [1]
						},
						["useName"] = true,
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
							"Rupture", -- [1]
						},
						["unitExists"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							1943, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = ">",
						["type"] = "aura2",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Rup On",
			["width"] = 40,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["parent"] = "Classic Rogue HUD by Denzo",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glowBorder"] = false,
		},
		["Swing OH"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["yOffset"] = -22,
			["foregroundColor"] = {
				1, -- [1]
				0.58823529411765, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Swing Timer",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_hand"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["hand"] = "off",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["hand"] = "off",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 23,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 3,
			["subRegions"] = {
			},
			["height"] = 39,
			["parent"] = "Classic Rogue HUD by Denzo",
			["crop_y"] = 0.41,
			["fontSize"] = 12,
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["crop_x"] = 0.41,
			["startAngle"] = 0,
			["anchorPoint"] = "CENTER",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura35",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["textureWrapMode"] = "CLAMP",
			["blendMode"] = "BLEND",
			["uid"] = "3zmH4V9Qzth",
			["authorOptions"] = {
			},
			["slantMode"] = "INSIDE",
			["frameStrata"] = 1,
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["compress"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "Swing OH",
			["xOffset"] = -129,
			["alpha"] = 1,
			["width"] = 20,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["config"] = {
			},
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["desaturateForeground"] = false,
			["backgroundOffset"] = 2,
		},
		["CP3"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["authorOptions"] = {
			},
			["yOffset"] = -7,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["parent"] = "Classic Rogue HUD by Denzo",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "status",
						["use_combopoints"] = true,
						["power"] = "3",
						["power_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["combopoints_operator"] = ">=",
						["use_power"] = false,
						["custom_hide"] = "timed",
						["combopoints"] = "3",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["barColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["icon"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%n",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 14,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["config"] = {
			},
			["uid"] = "ToyFSn)k39L",
			["backgroundColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["width"] = 46,
			["frameStrata"] = 2,
			["sparkOffsetY"] = 0,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "CP3",
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.2",
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Blank",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["sparkRotationMode"] = "AUTO",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkOffsetX"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "3",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0.44999998807907, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "sub.5.border_color",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "power",
						["value"] = "3",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "5",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
		},
		["Energy Tick"] = {
			["sparkWidth"] = 15,
			["sparkOffsetX"] = -1,
			["authorOptions"] = {
			},
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
						["custom"] = "function(a, e, t)\n    local currEnergy = UnitPower(\"player\", 3)\n    local dur = 2\n    if (e == \"UNIT_POWER_FREQUENT\" and currEnergy > (aura_env.lastEnergy or 0))\n    or (e == \"ENERGYTICK\" and t and currEnergy == UnitPowerMax(\"player\", 3))\n    then\n        if not a[\"\"]  then\n            a[\"\"] = {\n                show = true,\n                changed = true,\n                duration = dur,\n                expirationTime = GetTime() + dur,\n                progressType = \"timed\"\n            }\n        else\n            local s = a[\"\"]\n            s.changed = true\n            s.duration = dur\n            s.expirationTime = GetTime() + dur\n            s.show = true\n            C_Timer.After(2, function() WeakAuras.ScanEvents(\"ENERGYTICK\", true) end)\n        end\n    end\n    aura_env.lastEnergy = currEnergy\n    return true\nend\n\n\n\n",
						["names"] = {
						},
						["check"] = "event",
						["events"] = "UNIT_POWER_FREQUENT:player ENERGYTICK",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["spark"] = true,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stickyDuration"] = false,
			["parent"] = "Classic Rogue HUD by Denzo",
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_size"] = 16,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_offset"] = 5,
				}, -- [2]
			},
			["height"] = 25,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_class"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["xOffset"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
			["icon"] = false,
			["sparkColor"] = {
				1, -- [1]
				0.74117647058823, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 1,
			["sparkHeight"] = 35,
			["texture"] = "Details Flat",
			["id"] = "Energy Tick",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.2",
			["alpha"] = 1,
			["width"] = 242.5,
			["uid"] = "pznatpwATtL",
			["config"] = {
			},
			["inverse"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0.25,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "hastarget",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [4]
			},
			["version"] = 3,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["AR Ready"] = {
			["glow"] = true,
			["authorOptions"] = {
			},
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["glowLines"] = 8,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellName"] = 13750,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Adrenaline Rush",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 121471,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["glowFrequency"] = 0.25,
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["selfPoint"] = "CENTER",
			["parent"] = "Classic Rogue HUD by Denzo",
			["regionType"] = "icon",
			["uid"] = "2ClJKfElz88",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["tocversion"] = 11302,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "AR Ready",
			["width"] = 40,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["glowLength"] = 10,
			["config"] = {
			},
			["inverse"] = false,
			["keepAspectRatio"] = false,
			["conditions"] = {
			},
			["xOffset"] = -49,
			["glowBorder"] = false,
		},
		["CP2"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["xOffset"] = -49,
			["yOffset"] = -7,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/c8AqTuJae/3",
			["backgroundColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 23,
			["parent"] = "Classic Rogue HUD by Denzo",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["sparkOffsetX"] = 0,
			["barColor"] = {
				1, -- [1]
				0.72941176470588, -- [2]
				0.28235294117647, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["version"] = 3,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%n",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "None",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [5]
			},
			["height"] = 14,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[9] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "CP2",
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.2",
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Blank",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11302,
			["sparkHidden"] = "NEVER",
			["sparkRotationMode"] = "AUTO",
			["alpha"] = 1,
			["width"] = 46,
			["authorOptions"] = {
			},
			["uid"] = "4byzl14apuS",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "power",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.29803921568628, -- [1]
								0.094117647058824, -- [2]
								0, -- [3]
								0.44999998807907, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "sub.5.border_color",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.72941176470588, -- [2]
								0.28235294117647, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "5",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								0.80392156862745, -- [1]
								0.65490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["desaturate"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "status",
						["use_combopoints"] = true,
						["power"] = "2",
						["power_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["combopoints_operator"] = ">=",
						["use_power"] = false,
						["custom_hide"] = "timed",
						["combopoints"] = "2",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
		},
		["Feint"] = {
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -73,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["auto"] = true,
			["tocversion"] = 11302,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowXOffset"] = 0,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["parent"] = "Classic Rogue HUD by Denzo",
			["glowLines"] = 8,
			["glowLength"] = 10,
			["glowFrequency"] = 0.25,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "target",
						["remaining"] = "5",
						["use_specific_unit"] = false,
						["remaining_operator"] = "<",
						["debuffType"] = "HARMFUL",
						["spellName"] = 1966,
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
							"Marked for Death", -- [1]
						},
						["buffShowOn"] = "showOnMissing",
						["event"] = "Cooldown Progress (Spell)",
						["use_remaining"] = false,
						["realSpellName"] = "Feint",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["uid"] = "v5DW2XzjNLT",
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						[21] = true,
						[20] = true,
						[9] = true,
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["xOffset"] = -49,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["glowScale"] = 1,
			["id"] = "Feint",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["glowYOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["progressPrecision"] = 4,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [2]
			},
			["cooldown"] = false,
			["glowBorder"] = false,
		},
		["S&D"] = {
			["glow"] = false,
			["xOffset"] = -98,
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
			},
			["glowScale"] = 1,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowXOffset"] = 0,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%p",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 20,
				}, -- [1]
			},
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["arena"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["glowFrequency"] = 0.25,
			["glowLines"] = 8,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
			["glowLength"] = 10,
			["selfPoint"] = "CENTER",
			["uid"] = "eADHjPdNkzg",
			["regionType"] = "icon",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Slice and Dice", -- [1]
						},
						["names"] = {
							"Slice and Dice", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellName"] = 121471,
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "aura2",
						["realSpellName"] = "Shadow Blades",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 121471,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "S&D",
			["width"] = 40,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["parent"] = "Classic Rogue HUD by Denzo",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["progressPrecision"] = 4,
			["glowBorder"] = false,
		},
		["Classic Rogue HUD by Denzo"] = {
			["controlledChildren"] = {
				"Swing MH", -- [1]
				"Swing OH", -- [2]
				"S&D", -- [3]
				"Vanish Ready", -- [4]
				"Vanish CD", -- [5]
				"Gouge", -- [6]
				"Blind", -- [7]
				"Sprint", -- [8]
				"Evasion", -- [9]
				"Feint", -- [10]
				"AR On", -- [11]
				"AR Ready", -- [12]
				"AR CD", -- [13]
				"Garr On", -- [14]
				"Rup On", -- [15]
				"CP1", -- [16]
				"CP2", -- [17]
				"CP3", -- [18]
				"CP4", -- [19]
				"CP5", -- [20]
				"CP Text", -- [21]
				"Energy OOFC", -- [22]
				"Energy CBD", -- [23]
				"Energy", -- [24]
				"Energy Tick", -- [25]
				"Energy Text", -- [26]
				"Bleeds (DB)", -- [27]
				"ElvUI Skin", -- [28]
				"25 Energy", -- [29]
				"35 Energy", -- [30]
				"40 Energy", -- [31]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 6.38174210228209,
			["yOffset"] = -229.287534262253,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/c8AqTuJae/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 23,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desc"] = "Denzo - Eonar EU https://wago.io/c8AqTuJae",
			["version"] = 3,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 0.65,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["semver"] = "1.0.2",
			["tocversion"] = 11302,
			["id"] = "Classic Rogue HUD by Denzo",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["authorOptions"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
			},
			["uid"] = "Ga)82xWbCz5",
			["config"] = {
			},
		},
		["CP Text"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = -8,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/c8AqTuJae/3",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Accidental Presidency",
			["sparkOffsetY"] = 2,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["MONK"] = true,
						["ROGUE"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_combat"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "fer28",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["auto"] = true,
			["tocversion"] = 11302,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["sparkOffsetX"] = 0,
			["color"] = {
				1, -- [1]
				0.96078431372549, -- [2]
				0.99607843137255, -- [3]
				1, -- [4]
			},
			["barInFront"] = true,
			["parent"] = "Classic Rogue HUD by Denzo",
			["sparkRotationMode"] = "MANUAL",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%p                    ",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["event"] = "Power",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 23,
			["spark"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["text"] = true,
			["config"] = {
			},
			["stickyDuration"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textSize"] = 14,
			["version"] = 3,
			["stacksFont"] = "Friz Quadrata TT",
			["height"] = 19.999952316284,
			["timerFlags"] = "None",
			["anchorFrameType"] = "SCREEN",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontSize"] = 15,
			["rotateText"] = "NONE",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHidden"] = "BOTH",
			["uid"] = "cokgQ3k)xTU",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["justify"] = "CENTER",
			["borderSize"] = 1,
			["customTextUpdate"] = "update",
			["icon_side"] = "LEFT",
			["zoom"] = 0,
			["borderBackdrop"] = "None",
			["sparkHeight"] = 40,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["semver"] = "1.0.2",
			["id"] = "CP Text",
			["displayTextRight"] = "%p",
			["frameStrata"] = 3,
			["width"] = 24.000047683716,
			["timer"] = false,
			["displayText"] = "%p",
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.60000002384186, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "power",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
			},
			["sparkWidth"] = 15,
		},
	},
	["minimap"] = {
		["minimapPos"] = 228.438874877018,
		["hide"] = false,
	},
	["history"] = {
		["D88UaF1xnJQ"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["glowLength"] = 10,
				["yOffset"] = -73,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["triggers"] = {
					{
						["trigger"] = {
							["remaining_operator"] = "<",
							["genericShowOn"] = "showAlways",
							["use_specific_unit"] = false,
							["remaining"] = "5",
							["duration"] = "1",
							["subeventPrefix"] = "SPELL",
							["names"] = {
								"Marked for Death", -- [1]
							},
							["spellName"] = 2983,
							["use_absorbMode"] = true,
							["type"] = "status",
							["unit"] = "target",
							["subeventSuffix"] = "_CAST_START",
							["buffShowOn"] = "showOnMissing",
							["unevent"] = "auto",
							["event"] = "Cooldown Progress (Spell)",
							["use_remaining"] = false,
							["realSpellName"] = "Sprint",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["use_genericShowOn"] = true,
							["use_unit"] = true,
							["debuffType"] = "HARMFUL",
							["use_track"] = true,
							["ownOnly"] = true,
						},
						["untrigger"] = {
							["genericShowOn"] = "showAlways",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowXOffset"] = 0,
				["glowLines"] = 8,
				["useglowColor"] = false,
				["glowFrequency"] = 0.25,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["desaturate"] = false,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["parent"] = "Classic Rogue HUD by Denzo",
				["authorOptions"] = {
				},
				["uid"] = "D88UaF1xnJQ",
				["regionType"] = "icon",
				["xOffset"] = 49,
				["glowYOffset"] = 0,
				["alpha"] = 1,
				["progressPrecision"] = 4,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["cooldownTextDisabled"] = false,
				["zoom"] = 0,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Sprint",
				["width"] = 40,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["config"] = {
				},
				["inverse"] = false,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["single"] = 9,
						["multi"] = {
							[21] = true,
							[20] = true,
							[9] = true,
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 3,
						["multi"] = {
							[2] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["ingroup"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 0,
						},
						["changes"] = {
							{
								["property"] = "desaturate",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "desaturate",
							}, -- [1]
							{
							}, -- [2]
						},
					}, -- [2]
				},
				["cooldown"] = false,
				["glowBorder"] = false,
			},
		},
		["p(uG)wZJDnx"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["authorOptions"] = {
				},
				["yOffset"] = -73,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["remaining_operator"] = "<",
							["genericShowOn"] = "showAlways",
							["use_specific_unit"] = false,
							["remaining"] = "110",
							["ownOnly"] = true,
							["subeventPrefix"] = "SPELL",
							["use_unit"] = true,
							["spellName"] = 5277,
							["use_absorbMode"] = true,
							["type"] = "status",
							["unit"] = "target",
							["subeventSuffix"] = "_CAST_START",
							["buffShowOn"] = "showOnMissing",
							["unevent"] = "auto",
							["event"] = "Cooldown Progress (Spell)",
							["use_remaining"] = false,
							["realSpellName"] = "Evasion",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["use_genericShowOn"] = true,
							["names"] = {
								"Marked for Death", -- [1]
							},
							["debuffType"] = "HARMFUL",
							["use_track"] = true,
							["duration"] = "1",
						},
						["untrigger"] = {
							["genericShowOn"] = "showAlways",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLength"] = 10,
				["glowLines"] = 8,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["glowFrequency"] = 0.25,
				["useglowColor"] = false,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = false,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["single"] = 9,
						["multi"] = {
							[21] = true,
							[20] = true,
							[9] = true,
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 3,
						["multi"] = {
							true, -- [1]
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["xOffset"] = 0,
				["parent"] = "Classic Rogue HUD by Denzo",
				["uid"] = "p(uG)wZJDnx",
				["regionType"] = "icon",
				["desaturate"] = false,
				["width"] = 40,
				["alpha"] = 1,
				["glowXOffset"] = 0,
				["progressPrecision"] = 4,
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["zoom"] = 0,
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Evasion",
				["icon"] = true,
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["anchorFrameType"] = "SCREEN",
				["config"] = {
				},
				["inverse"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["cooldownEdge"] = false,
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 0,
						},
						["changes"] = {
							{
								["property"] = "desaturate",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "desaturate",
							}, -- [1]
							{
							}, -- [2]
						},
					}, -- [2]
				},
				["cooldown"] = false,
				["glowBorder"] = false,
			},
		},
		["CNM5qK(9rMP"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["glowLength"] = 10,
				["customText"] = "",
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["preset"] = "alphaPulse",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowFrequency"] = 0.25,
				["desaturate"] = false,
				["triggers"] = {
					{
						["trigger"] = {
							["useName"] = true,
							["debuffType"] = "HARMFUL",
							["auranames"] = {
								"Rupture", -- [1]
							},
							["unit"] = "target",
							["ownOnly"] = true,
							["event"] = "Health",
							["names"] = {
								"Rupture", -- [1]
							},
							["unitExists"] = false,
							["rem"] = "6",
							["spellIds"] = {
								1943, -- [1]
							},
							["subeventPrefix"] = "SPELL",
							["remOperator"] = ">",
							["subeventSuffix"] = "_CAST_START",
							["type"] = "aura2",
							["buffShowOn"] = "showOnActive",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["parent"] = "Classic Rogue HUD by Denzo",
				["xOffset"] = 98,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["regionType"] = "icon",
				["config"] = {
				},
				["authorOptions"] = {
				},
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["glowXOffset"] = 0,
				["zoom"] = 0,
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Rup On",
				["progressPrecision"] = 4,
				["frameStrata"] = 5,
				["glowYOffset"] = 0,
				["width"] = 40,
				["uid"] = "CNM5qK(9rMP",
				["inverse"] = false,
				["load"] = {
					["ingroup"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["single"] = 1,
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["use_class"] = true,
					["use_combat"] = true,
					["use_petbattle"] = false,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
				},
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["conditions"] = {
				},
				["selfPoint"] = "CENTER",
				["glowBorder"] = false,
			},
		},
		["3zmH4V9Qzth"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["user_y"] = 0,
				["user_x"] = 0,
				["color"] = {
				},
				["yOffset"] = -22,
				["anchorPoint"] = "CENTER",
				["desaturateBackground"] = false,
				["sameTexture"] = true,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["subeventSuffix"] = "_CAST_START",
							["duration"] = "1",
							["event"] = "Swing Timer",
							["use_unit"] = true,
							["unevent"] = "auto",
							["names"] = {
							},
							["spellIds"] = {
							},
							["use_hand"] = true,
							["unit"] = "player",
							["subeventPrefix"] = "SPELL",
							["hand"] = "off",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
							["hand"] = "off",
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["endAngle"] = 360,
				["internalVersion"] = 23,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["rotation"] = 0,
				["font"] = "Friz Quadrata TT",
				["version"] = 3,
				["subRegions"] = {
				},
				["height"] = 39,
				["desaturateForeground"] = false,
				["crop_y"] = 0.41,
				["startAngle"] = 0,
				["useAdjustededMax"] = false,
				["fontSize"] = 12,
				["conditions"] = {
				},
				["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura35",
				["foregroundColor"] = {
					1, -- [1]
					0.58823529411765, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["selfPoint"] = "CENTER",
				["mirror"] = false,
				["useAdjustededMin"] = false,
				["regionType"] = "progresstexture",
				["load"] = {
					["use_class"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["blendMode"] = "BLEND",
				["config"] = {
				},
				["backgroundColor"] = {
					0.5, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.5, -- [4]
				},
				["slantMode"] = "INSIDE",
				["width"] = 20,
				["alpha"] = 1,
				["xOffset"] = -129,
				["tocversion"] = 11302,
				["semver"] = "1.0.2",
				["compress"] = false,
				["id"] = "Swing OH",
				["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["authorOptions"] = {
				},
				["uid"] = "3zmH4V9Qzth",
				["inverse"] = true,
				["parent"] = "Classic Rogue HUD by Denzo",
				["orientation"] = "VERTICAL",
				["crop_x"] = 0.41,
				["textureWrapMode"] = "CLAMP",
				["backgroundOffset"] = 2,
			},
		},
		["4qhlIP81Mn7"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["glowLength"] = 10,
				["yOffset"] = -244.63502502441,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["icon"] = true,
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 10,
				["glowLines"] = 8,
				["desaturate"] = false,
				["glowFrequency"] = 0.25,
				["glowXOffset"] = 0,
				["displayIcon"] = 134366,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 4,
				["load"] = {
					["spec"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 0,
				["parent"] = "Classic Rogue HUD by Denzo",
				["regionType"] = "icon",
				["uid"] = "4qhlIP81Mn7",
				["authorOptions"] = {
					{
						["type"] = "range",
						["useDesc"] = true,
						["max"] = 10,
						["step"] = 1,
						["width"] = 1,
						["min"] = 1,
						["name"] = "Border Width",
						["desc"] = "Sets the border width (in pixels) for your skinned icon auras.  Default is 1.  Note that this will *NOT* impact spacing/positioning of icons in groups.",
						["key"] = "bWidth",
						["default"] = 1,
					}, -- [1]
					{
						["type"] = "toggle",
						["default"] = false,
						["desc"] = "If checked, whenever an icon appears (even if it is 99% transparent), the border lines will be fully opaque.",
						["key"] = "solid",
						["useDesc"] = true,
						["name"] = "Solid Border",
						["width"] = 1,
					}, -- [2]
					{
						["type"] = "range",
						["useDesc"] = true,
						["max"] = 2,
						["step"] = 0.01,
						["width"] = 2,
						["min"] = 0,
						["name"] = "Zoom",
						["desc"] = "Any of your icon auras that have a zoom of 0 will instead be zoomed to this level.  Recommended:  0.3",
						["key"] = "zoom",
						["default"] = 0.3,
					}, -- [3]
					{
						["type"] = "header",
						["text"] = "",
						["useName"] = false,
						["width"] = 1,
					}, -- [4]
					{
						["type"] = "input",
						["useDesc"] = true,
						["width"] = 2,
						["name"] = "Exclusions",
						["key"] = "exclusions",
						["desc"] = "Enter the names of any auras that you would like to exclude from the skinning process.  Any auras with these names, including clones, will not be reconfigured here.  Separate names with commas.",
						["length"] = 10,
						["default"] = "",
						["useLength"] = false,
					}, -- [5]
				},
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["cooldownEdge"] = false,
				["zoom"] = 0.3,
				["tocversion"] = 11302,
				["semver"] = "1.0.2",
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["glowScale"] = 1,
				["id"] = "ElvUI Skin",
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["width"] = 10,
				["config"] = {
					["solid"] = false,
					["bWidth"] = 1,
					["exclusions"] = "",
					["zoom"] = 0.3,
				},
				["inverse"] = false,
				["triggers"] = {
					{
						["trigger"] = {
							["use_unitisunit"] = true,
							["use_alwaystrue"] = false,
							["duration"] = "1",
							["unit"] = "member",
							["debuffType"] = "HELPFUL",
							["custom_hide"] = "timed",
							["type"] = "custom",
							["buffShowOn"] = "showOnActive",
							["subeventSuffix"] = "_CAST_START",
							["use_unit"] = true,
							["use_absorbMode"] = true,
							["event"] = "Chat Message",
							["subeventPrefix"] = "SPELL",
							["custom"] = "function ()\n    aura_env.CheckLogin()\n    return false\nend",
							["unevent"] = "timed",
							["spellIds"] = {
							},
							["events"] = "WA_LOGIN_FINISHED",
							["check"] = "event",
							["custom_type"] = "status",
							["names"] = {
							},
							["use_specific_unit"] = true,
						},
						["untrigger"] = {
							["unit"] = "member",
							["use_specific_unit"] = true,
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["actions"] = {
					["start"] = {
					},
					["init"] = {
						["custom"] = "local gmatch, trim = string.gmatch, string.trim\nlocal wipe = table.wipe\n\n\nlocal skinner = getglobal( \"waIconSkinTool\" )\n\nif not skinner then\n    skinner = {\n        blacklist = {},\n        children  = {},\n        backdrop  = {},\n    }\n    setglobal( \"waIconSkinTool\", skinner )\nelse\n    wipe( skinner.blacklist )\n    for token in gmatch( aura_env.config.exclusions, \"[^,]+\" ) do\n        token = trim( token )\n        skinner.blacklist[ token ] = true\n    end    \nend\n\nskinner.borderWidth = aura_env.config.bWidth or 1\nskinner.zoom        = aura_env.config.zoom or 0.3\nskinner.solid       = aura_env.config.solid or false\n\n\n-- Backdrop/Border Template\nskinner.backdrop.bgFile = nil\nskinner.backdrop.edgeFile = \"Interface/Buttons/WHITE8X8\"\nskinner.backdrop.tile = false\nskinner.backdrop.tileSize = 1\nskinner.backdrop.edgeSize = skinner.borderWidth or 1\nskinner.backdrop.insets = { left = 1, right = 1, top = 1, bottom = 1 }\n\n\nfunction skinner:InitTemplate( region )\n    local a = min( select( 4, region.icon:GetVertexColor() ), region.icon:GetAlpha() )            \n    if self.solid then a = a > 0 and 1 or a end\n    \n    region:SetBackdrop( self.backdrop )\n    region:SetBackdropBorderColor( 0, 0, 0, a )\n    \n    -- Preserve actual zoom setting, but account for \"Keep Aspect Ratio\"\n    local realZoom = region.zoom\n    \n    region.zoom = self.zoom\n    region:UpdateTexCoords()\n    region.zoom = realZoom\n    \n    self:HookIt( region )\n    \n    region.isSkinned = true\nend\n\n\nfunction skinner:RefreshTemplate( region )\n    if self.SkinIsRefreshing then return end\n    \n    if region.icon and region.isSkinned then\n        self.SkinIsRefreshing = true\n        \n        if self.blacklist[ region.id ] then\n            region:SetBackdrop( nil )\n            region:UpdateSize()\n            region.isSkinned = nil\n        else\n            local a = min( select( 4, region.icon:GetVertexColor() ), region.icon:GetAlpha() )            \n            if self.solid then a = a > 0 and 1 or a end\n            \n            region:SetBackdropBorderColor( 0, 0, 0, a )\n            \n            -- Preserve actual zoom setting, but account for \"Keep Aspect Ratio\"\n            local realZoom = region.zoom\n            \n            region.zoom = self.zoom\n            region:UpdateTexCoords()\n            region.zoom = realZoom\n        end\n        \n        self.SkinIsRefreshing = nil\n    end\nend\n\n\nfunction skinner:ApplyTemplate( region, cloneId )\n    local r = WeakAuras.GetRegion( region, cloneId )\n    \n    if r and r.regionType == \"icon\" then            \n        if r.isSkinned then\n            self:RefreshTemplate( r )\n        elseif not skinner.blacklist[ region ] then\n            self:InitTemplate( r )\n        end\n        \n    end\nend\n\n\n-- Our hook functions should refer to the skinner table, so that we can make changes without duplicating hooks.\nfunction skinner:OnSetRegion( data, cloneId )\n    if not data or not data.id then return end\n    self:ApplyTemplate( data.id, cloneId )\nend\n\n\nif not skinner.SetRegionIsHooked then\n    hooksecurefunc( WeakAuras, \"SetRegion\", function( ... )\n            skinner:OnSetRegion( ... )\n    end )\n    skinner.SetRegionIsHooked = true\nend\n\n\nfunction skinner:HookIt( region )\n    if not self.children[ region ] then\n        local rt = function( ... )\n            skinner:RefreshTemplate( ... )\n        end\n        \n        hooksecurefunc( region,      \"Color\",          rt )\n        hooksecurefunc( region,      \"SetAlpha\",       rt )\n        hooksecurefunc( region,      \"UpdateSize\",     rt )\n        \n        hooksecurefunc( region.icon, \"SetVertexColor\", rt )\n        \n        self.children[ region ] = true\n    end\nend\n\n\nlocal needsRefresh = true\n\nfunction skinner:SkinAllIcons()    \n    for aura, clones in pairs( WeakAuras.clones ) do\n        local r = WeakAuras.GetRegion( aura )\n        \n        if r and r.regionType == \"icon\" then\n            self:ApplyTemplate( aura )\n            \n            for cloneId, clone in pairs( clones ) do\n                self:ApplyTemplate( aura, cloneId )\n            end            \n        end\n    end\nend\n\nfunction aura_env.CheckLogin()\n    if WeakAuras.IsLoginFinished() and needsRefresh then\n        skinner:SkinAllIcons()        \n        needsRefresh = false\n        return\n    end\n    \n    C_Timer.After( 1, function ()\n            WeakAuras.ScanEvents( \"WA_LOGIN_FINISHED\" )\n    end )\nend",
						["do_custom"] = true,
					},
					["finish"] = {
					},
				},
				["conditions"] = {
				},
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowBorder"] = false,
			},
		},
		["MIQfOenGE19"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 5,
				["borderBackdrop"] = "None",
				["authorOptions"] = {
				},
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["fontFlags"] = "OUTLINE",
				["sparkMirror"] = false,
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["backgroundColor"] = {
					1, -- [1]
					0.84313725490196, -- [2]
					0.30980392156863, -- [3]
					0, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["debuffType"] = "HELPFUL",
							["unevent"] = "auto",
							["use_unit"] = true,
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["unit"] = "player",
							["subeventSuffix"] = "_CAST_START",
							["powertype"] = 3,
							["spellIds"] = {
							},
							["names"] = {
							},
							["event"] = "Power",
							["subeventPrefix"] = "SPELL",
							["use_powertype"] = true,
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["stickyDuration"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["sparkOffsetY"] = 0,
				["barColor"] = {
					0.29803921568628, -- [1]
					0.094117647058824, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["desaturate"] = false,
				["progressPrecision"] = 0,
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p                    ",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 14,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 25,
				["uid"] = "MIQfOenGE19",
				["load"] = {
					["use_petbattle"] = false,
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["difficulty"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["useAdjustededMax"] = false,
				["sparkOffsetX"] = 0,
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["sparkRotationMode"] = "AUTO",
				["id"] = "Energy",
				["smoothProgress"] = true,
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["icon_side"] = "LEFT",
				["semver"] = "1.0.2",
				["zoom"] = 0,
				["sparkHeight"] = 35,
				["texture"] = "ElvUI Blank",
				["auto"] = true,
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["spark"] = true,
				["tocversion"] = 11302,
				["sparkHidden"] = "BOTH",
				["icon"] = false,
				["frameStrata"] = 4,
				["width"] = 242.5,
				["config"] = {
				},
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["inverse"] = true,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL_INVERSE",
				["conditions"] = {
				},
				["selfPoint"] = "CENTER",
				["xOffset"] = 0,
			},
		},
		["WI0Yl1oihZX"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["customText"] = "",
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["preset"] = "shake",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							0.96862745098039, -- [1]
							0.9843137254902, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["desaturate"] = false,
				["glowFrequency"] = 0.25,
				["selfPoint"] = "CENTER",
				["glowXOffset"] = 0,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 1,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 49,
				["authorOptions"] = {
				},
				["regionType"] = "icon",
				["config"] = {
				},
				["glowLength"] = 10,
				["width"] = 40,
				["alpha"] = 1,
				["progressPrecision"] = 4,
				["zoom"] = 0,
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Garr On",
				["icon"] = true,
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["anchorFrameType"] = "SCREEN",
				["uid"] = "WI0Yl1oihZX",
				["inverse"] = false,
				["parent"] = "Classic Rogue HUD by Denzo",
				["triggers"] = {
					{
						["trigger"] = {
							["rem"] = "5.4",
							["auranames"] = {
								"Garrote", -- [1]
							},
							["ownOnly"] = true,
							["use_specific_unit"] = false,
							["debuffType"] = "HARMFUL",
							["type"] = "aura2",
							["unevent"] = "auto",
							["custom_hide"] = "timed",
							["event"] = "Health",
							["buffShowOn"] = "showOnActive",
							["use_unit"] = true,
							["useName"] = true,
							["spellIds"] = {
							},
							["names"] = {
								"Garrote", -- [1]
							},
							["remOperator"] = ">",
							["subeventPrefix"] = "SPELL",
							["unit"] = "target",
							["subeventSuffix"] = "_CAST_START",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["conditions"] = {
				},
				["url"] = "https://wago.io/c8AqTuJae/3",
				["glowBorder"] = false,
			},
		},
		["H9wHfnSTUaP"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["outline"] = "OUTLINE",
				["parent"] = "Classic Rogue HUD by Denzo",
				["displayText"] = "%p",
				["yOffset"] = 0,
				["anchorPoint"] = "CENTER",
				["customTextUpdate"] = "update",
				["automaticWidth"] = "Auto",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
						["custom"] = "_G['GarroteDB'] = {}\n_G['RuptureDB'] = {}",
						["do_custom"] = true,
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "custom",
							["custom_type"] = "event",
							["debuffType"] = "HELPFUL",
							["genericShowOn"] = "showOnActive",
							["unit"] = "player",
							["custom"] = "function(event, _, type, _, src, _, _, _, dest, _, _, _, spellId)\n    if event ~= \"COMBAT_LOG_EVENT_UNFILTERED\" then return end\n    \n    if src ~= UnitGUID(\"player\") then return end\n    \n    -- Check for Nightstalker rupture\n    if IsPlayerSpell(14062) or IsPlayerSpell(200806) then\n        \n        --init table for target on applying rupture\n        if type == \"SPELL_CAST_SUCCESS\" and spellId == 1943 then\n            if (_G['RuptureDB'][dest] == nil) then\n                _G['RuptureDB'][dest] = {dest, [\"NS\"] = false,\n                    [\"Exsang\"] = false}\n            else\n                _G['RuptureDB'][dest][\"Exsang\"] = false\n            end\n            \n            -- set Nightstalker bool\n            if IsStealthed() then\n                _G['RuptureDB'][dest][\"NS\"] = true\n            else\n                _G['RuptureDB'][dest][\"NS\"] = false\n            end\n            \n        elseif type == \"SPELL_AURA_REMOVED\" and spellId ==  1943 then\n            \n            _G['RuptureDB'][dest] = nil\n        end\n        \n    end\n    \n    -- Check for exanguinate\n    if type == \"SPELL_CAST_SUCCESS\" and spellId == 200806 then\n        if (_G['RuptureDB'][dest] ~= nil) then\n            _G['RuptureDB'][dest][\"Exsang\"] = true\n        end\n    end    \n    \n    -- Check for subterfuge garrote\n    if type == \"SPELL_AURA_APPLIED\" or  type == \"SPELL_CAST_SUCCESS\" then\n        if spellId == 703 then\n            if IsStealthed() or UnitBuff(\"player\", GetSpellInfo(108208))\n            then\n                _G['GarroteDB'][dest] =true \n            else\n                _G['GarroteDB'][dest] = nil\n                \n            end\n        end\n    elseif type == \"SPELL_AURA_REMOVED\" and spellId == 703 then\n        _G['GarroteDB'][dest] = nil\n    end\nend",
							["spellIds"] = {
							},
							["events"] = "COMBAT_LOG_EVENT_UNFILTERED PLAYER_TARGET_CHANGED",
							["event"] = "Health",
							["names"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["subeventPrefix"] = "SPELL",
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 23,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["progressPrecision"] = 4,
				["font"] = "Accidental Presidency",
				["version"] = 3,
				["height"] = 11.999991416931,
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["class"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["faction"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["single"] = 1,
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["fontSize"] = 12,
				["regionType"] = "text",
				["wordWrap"] = "WordWrap",
				["justify"] = "LEFT",
				["conditions"] = {
				},
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "Bleeds (DB)",
				["width"] = 11.000016212463,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["uid"] = "H9wHfnSTUaP",
				["config"] = {
				},
				["xOffset"] = 0,
				["authorOptions"] = {
				},
				["selfPoint"] = "BOTTOM",
				["fixedWidth"] = 200,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
			},
		},
		["Ga)82xWbCz5"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["controlledChildren"] = {
				},
				["borderBackdrop"] = "Blizzard Tooltip",
				["authorOptions"] = {
				},
				["scale"] = 1,
				["yOffset"] = -200,
				["border"] = false,
				["borderEdge"] = "None",
				["anchorPoint"] = "CENTER",
				["borderSize"] = 16,
				["regionType"] = "group",
				["borderColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["tocversion"] = 11302,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "aura",
							["subeventSuffix"] = "_CAST_START",
							["event"] = "Health",
							["unit"] = "player",
							["spellIds"] = {
							},
							["debuffType"] = "HELPFUL",
							["subeventPrefix"] = "SPELL",
							["names"] = {
							},
							["buffShowOn"] = "showOnActive",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["borderOffset"] = 5,
				["semver"] = "1.0.2",
				["selfPoint"] = "BOTTOMLEFT",
				["id"] = "Classic Rogue HUD by Denzo",
				["config"] = {
				},
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["uid"] = "Ga)82xWbCz5",
				["borderInset"] = 11,
				["version"] = 3,
				["desc"] = "Denzo - Eonar EU https://wago.io/c8AqTuJae",
				["internalVersion"] = 23,
				["conditions"] = {
				},
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = 0,
			},
		},
		["eCKKwVHTOO8"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["textFlags"] = "OUTLINE",
				["stacksSize"] = 12,
				["xOffset"] = 0,
				["stacksFlags"] = "None",
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["borderColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["rotateText"] = "NONE",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["fontFlags"] = "OUTLINE",
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["selfPoint"] = "CENTER",
				["barColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["desaturate"] = false,
				["progressPrecision"] = 0,
				["font"] = "Accidental Presidency",
				["sparkOffsetY"] = 2,
				["load"] = {
					["use_petbattle"] = false,
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["use_class"] = true,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["timerColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["regionType"] = "text",
				["stacks"] = false,
				["texture"] = "fer28",
				["textFont"] = "Friz Quadrata TT",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["auto"] = true,
				["tocversion"] = 11302,
				["timerFont"] = "Friz Quadrata TT",
				["alpha"] = 1,
				["borderInset"] = 1,
				["fixedWidth"] = 200,
				["textColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["outline"] = "OUTLINE",
				["borderBackdrop"] = "None",
				["color"] = {
					1, -- [1]
					0.96078431372549, -- [2]
					0.99607843137255, -- [3]
					1, -- [4]
				},
				["barInFront"] = true,
				["borderOffset"] = 1,
				["sparkRotationMode"] = "MANUAL",
				["automaticWidth"] = "Auto",
				["displayTextLeft"] = "%p                    ",
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["debuffType"] = "HELPFUL",
							["unevent"] = "auto",
							["use_unit"] = true,
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["unit"] = "player",
							["subeventSuffix"] = "_CAST_START",
							["powertype"] = 3,
							["spellIds"] = {
							},
							["names"] = {
							},
							["event"] = "Power",
							["subeventPrefix"] = "SPELL",
							["use_powertype"] = true,
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["textSize"] = 14,
				["internalVersion"] = 23,
				["spark"] = true,
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["text"] = true,
				["backgroundColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0, -- [4]
				},
				["stickyDuration"] = false,
				["uid"] = "eCKKwVHTOO8",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["version"] = 3,
				["displayText"] = "%p",
				["timer"] = false,
				["timerFlags"] = "None",
				["width"] = 24.000047683716,
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["fontSize"] = 20,
				["height"] = 19.999952316284,
				["config"] = {
				},
				["sparkHidden"] = "BOTH",
				["semver"] = "1.0.2",
				["border"] = true,
				["borderEdge"] = "1 Pixel",
				["timerSize"] = 12,
				["borderSize"] = 1,
				["wordWrap"] = "WordWrap",
				["icon_side"] = "LEFT",
				["sparkRotation"] = 0,
				["displayTextRight"] = "%p",
				["sparkHeight"] = 40,
				["customTextUpdate"] = "update",
				["sparkOffsetX"] = 0,
				["stacksColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["justify"] = "CENTER",
				["stacksFont"] = "Friz Quadrata TT",
				["id"] = "Energy Text",
				["authorOptions"] = {
				},
				["frameStrata"] = 9,
				["anchorFrameType"] = "SCREEN",
				["icon"] = false,
				["zoom"] = 0,
				["inverse"] = true,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL_INVERSE",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = -1,
							["variable"] = "incombat",
							["value"] = 0,
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.60000002384186, -- [4]
								},
								["property"] = "color",
							}, -- [1]
						},
					}, -- [1]
				},
				["sparkWidth"] = 15,
				["parent"] = "Classic Rogue HUD by Denzo",
			},
		},
		["eADHjPdNkzg"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["xOffset"] = -98,
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["triggers"] = {
					{
						["trigger"] = {
							["auranames"] = {
								"Slice and Dice", -- [1]
							},
							["names"] = {
								"Slice and Dice", -- [1]
							},
							["spellName"] = 121471,
							["type"] = "aura2",
							["subeventSuffix"] = "_CAST_START",
							["use_showOn"] = true,
							["buffShowOn"] = "showOnActive",
							["event"] = "Cooldown Progress (Spell)",
							["subeventPrefix"] = "SPELL",
							["realSpellName"] = "Shadow Blades",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["useName"] = true,
							["unit"] = "player",
							["unevent"] = "auto",
							["use_unit"] = true,
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
							["showOn"] = "showOnReady",
							["spellName"] = 121471,
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["desaturate"] = false,
				["glowFrequency"] = 0.25,
				["useglowColor"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 2,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["url"] = "https://wago.io/c8AqTuJae/3",
				["parent"] = "Classic Rogue HUD by Denzo",
				["regionType"] = "icon",
				["config"] = {
				},
				["authorOptions"] = {
				},
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["glowXOffset"] = 0,
				["cooldownTextDisabled"] = false,
				["tocversion"] = 11302,
				["semver"] = "1.0.2",
				["zoom"] = 0,
				["auto"] = true,
				["glowScale"] = 1,
				["id"] = "S&D",
				["glowLength"] = 10,
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["width"] = 40,
				["uid"] = "eADHjPdNkzg",
				["inverse"] = false,
				["progressPrecision"] = 4,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["conditions"] = {
				},
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["preset"] = "slidebottom",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["preset"] = "alphaPulse",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["preset"] = "slidebottom",
						["duration_type"] = "seconds",
					},
				},
				["glowBorder"] = false,
			},
		},
		["JICPxkceYD7"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["xOffset"] = -24,
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["unevent"] = "auto",
							["duration"] = "1",
							["event"] = "Health",
							["unit"] = "player",
							["spellIds"] = {
							},
							["use_unit"] = true,
							["names"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["subeventPrefix"] = "SPELL",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 23,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["desaturate"] = false,
				["rotation"] = 0,
				["version"] = 3,
				["subRegions"] = {
				},
				["height"] = 25,
				["rotate"] = true,
				["load"] = {
					["use_class"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["mirror"] = false,
				["regionType"] = "texture",
				["blendMode"] = "BLEND",
				["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
				["selfPoint"] = "CENTER",
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "40 Energy",
				["alpha"] = 1,
				["frameStrata"] = 9,
				["width"] = 2,
				["uid"] = "JICPxkceYD7",
				["config"] = {
				},
				["anchorFrameType"] = "SCREEN",
				["authorOptions"] = {
				},
				["color"] = {
					0.82745098039216, -- [1]
					0, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["conditions"] = {
				},
				["parent"] = "Classic Rogue HUD by Denzo",
				["discrete_rotation"] = 0,
			},
		},
		["ecHIiUy)2uV"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 10,
				["modelIsUnit"] = false,
				["xOffset"] = 0,
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["icon"] = false,
				["fontFlags"] = "OUTLINE",
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["selfPoint"] = "CENTER",
				["barColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["desaturate"] = false,
				["rotation"] = 0,
				["sparkOffsetY"] = 0,
				["load"] = {
					["use_petbattle"] = false,
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["difficulty"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sequence"] = 5,
				["scale"] = 1,
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["texture"] = "ElvUI Blank",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["spark"] = false,
				["tocversion"] = 11302,
				["alpha"] = 1,
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["stacksPoint"] = "BOTTOMRIGHT",
				["sparkOffsetX"] = 0,
				["parent"] = "Classic Rogue HUD by Denzo",
				["model_x"] = 0,
				["sparkRotationMode"] = "AUTO",
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["debuffType"] = "HELPFUL",
							["unevent"] = "auto",
							["use_unit"] = true,
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["unit"] = "player",
							["subeventSuffix"] = "_CAST_START",
							["powertype"] = 3,
							["spellIds"] = {
							},
							["names"] = {
							},
							["event"] = "Power",
							["subeventPrefix"] = "SPELL",
							["use_powertype"] = true,
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [1]
					{
						["trigger"] = {
							["type"] = "aura",
							["subeventSuffix"] = "_CAST_START",
							["ownOnly"] = true,
							["event"] = "Health",
							["unit"] = "player",
							["spellIds"] = {
								185422, -- [1]
								195627, -- [2]
								13750, -- [3]
								115192, -- [4]
								235027, -- [5]
								256735, -- [6]
								121153, -- [7]
							},
							["debuffType"] = "HELPFUL",
							["names"] = {
								"Shadow Dance", -- [1]
								"Opportunity", -- [2]
								"能量刺激", -- [3]
								"Subterfuge", -- [4]
								"Master Assassin's Initiative", -- [5]
								"Master Assassin", -- [6]
								"Blindside", -- [7]
							},
							["buffShowOn"] = "showOnActive",
							["subeventPrefix"] = "SPELL",
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [2]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["internalVersion"] = 23,
				["advance"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["stickyDuration"] = false,
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = false,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p                     ",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 14,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 25,
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["displayStacks"] = "%s",
				["config"] = {
				},
				["model_path"] = "SPELLS/Fire_Stylized_var_1.m2",
				["auto"] = true,
				["useAdjustededMax"] = false,
				["progressPrecision"] = 0,
				["backgroundColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["borderInFront"] = false,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["icon_side"] = "LEFT",
				["uid"] = "ecHIiUy)2uV",
				["width"] = 242.5,
				["sparkHeight"] = 30,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["stacksContainment"] = "INSIDE",
				["authorOptions"] = {
				},
				["semver"] = "1.0.2",
				["id"] = "Energy CBD",
				["sparkHidden"] = "NEVER",
				["model_y"] = 0.5,
				["frameStrata"] = 2,
				["anchorFrameType"] = "SCREEN",
				["borderBackdrop"] = "Blizzard Tooltip",
				["customTextUpdate"] = "update",
				["inverse"] = true,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL_INVERSE",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "show",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 2,
							["variable"] = "show",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = {
									0.72549019607843, -- [1]
									0.56078431372549, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.72549019607843, -- [1]
									0.56078431372549, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = -1,
							["variable"] = "incombat",
							["value"] = 0,
						},
						["changes"] = {
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [1]
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0.44999998807907, -- [4]
								},
								["property"] = "barColor",
							}, -- [2]
						},
					}, -- [3]
				},
				["zoom"] = 0,
				["model_z"] = 2,
			},
		},
		["pznatpwATtL"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 15,
				["borderBackdrop"] = "Blizzard Tooltip",
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["sparkRotationMode"] = "AUTO",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["backgroundColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "custom",
							["custom_type"] = "stateupdate",
							["event"] = "Health",
							["unit"] = "player",
							["subeventPrefix"] = "SPELL",
							["spellIds"] = {
							},
							["custom"] = "function(a, e, t)\n    local currEnergy = UnitPower(\"player\", 3)\n    local dur = 2\n    if (e == \"UNIT_POWER_FREQUENT\" and currEnergy > (aura_env.lastEnergy or 0))\n    or (e == \"ENERGYTICK\" and t and currEnergy == UnitPowerMax(\"player\", 3))\n    then\n        if not a[\"\"]  then\n            a[\"\"] = {\n                show = true,\n                changed = true,\n                duration = dur,\n                expirationTime = GetTime() + dur,\n                progressType = \"timed\"\n            }\n        else\n            local s = a[\"\"]\n            s.changed = true\n            s.duration = dur\n            s.expirationTime = GetTime() + dur\n            s.show = true\n            C_Timer.After(2, function() WeakAuras.ScanEvents(\"ENERGYTICK\", true) end)\n        end\n    end\n    aura_env.lastEnergy = currEnergy\n    return true\nend\n\n\n\n",
							["events"] = "UNIT_POWER_FREQUENT:player ENERGYTICK",
							["check"] = "event",
							["names"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["selfPoint"] = "CENTER",
				["backdropInFront"] = false,
				["barColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["desaturate"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["version"] = 3,
				["sparkOffsetY"] = 0,
				["subRegions"] = {
					{
						["type"] = "aurabar_bar",
					}, -- [1]
					{
						["border_size"] = 16,
						["border_anchor"] = "bar",
						["border_offset"] = 5,
						["border_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.5, -- [4]
						},
						["border_visible"] = false,
						["border_edge"] = "None",
						["type"] = "subborder",
					}, -- [2]
				},
				["height"] = 25,
				["authorOptions"] = {
				},
				["load"] = {
					["use_class"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["useAdjustededMax"] = false,
				["sparkOffsetX"] = -1,
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0.5, -- [4]
				},
				["icon"] = false,
				["config"] = {
				},
				["uid"] = "pznatpwATtL",
				["smoothProgress"] = false,
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = true,
				["width"] = 242.5,
				["icon_side"] = "RIGHT",
				["alpha"] = 1,
				["semver"] = "1.0.2",
				["sparkHeight"] = 35,
				["texture"] = "Details Flat",
				["sparkHidden"] = "NEVER",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["spark"] = true,
				["tocversion"] = 11302,
				["id"] = "Energy Tick",
				["auto"] = true,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["zoom"] = 0,
				["sparkColor"] = {
					1, -- [1]
					0.74117647058823, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["inverse"] = true,
				["xOffset"] = 0,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = -1,
							["variable"] = "incombat",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = 1,
								["property"] = "alpha",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = -1,
							["variable"] = "incombat",
							["value"] = 0,
						},
						["changes"] = {
							{
								["value"] = 0.25,
								["property"] = "alpha",
							}, -- [1]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = -1,
							["variable"] = "hastarget",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = 1,
								["property"] = "alpha",
							}, -- [1]
						},
					}, -- [3]
					{
						["check"] = {
						},
						["changes"] = {
							{
							}, -- [1]
						},
					}, -- [4]
				},
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["stickyDuration"] = false,
			},
		},
		["m3sF)UxOR93"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["user_y"] = 0,
				["user_x"] = 0,
				["color"] = {
				},
				["yOffset"] = -22,
				["anchorPoint"] = "CENTER",
				["desaturateBackground"] = false,
				["sameTexture"] = true,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["subeventSuffix"] = "_CAST_START",
							["duration"] = "1",
							["event"] = "Swing Timer",
							["use_unit"] = true,
							["unevent"] = "auto",
							["names"] = {
							},
							["spellIds"] = {
							},
							["use_hand"] = true,
							["unit"] = "player",
							["subeventPrefix"] = "SPELL",
							["hand"] = "main",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["activeTriggerMode"] = -10,
				},
				["endAngle"] = 360,
				["internalVersion"] = 23,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["desc"] = "https://wago.io/c8AqTuJae",
				["rotation"] = 0,
				["font"] = "Friz Quadrata TT",
				["version"] = 3,
				["subRegions"] = {
				},
				["height"] = 39,
				["parent"] = "Classic Rogue HUD by Denzo",
				["crop_y"] = 0.41,
				["textureWrapMode"] = "CLAMP",
				["useAdjustededMax"] = false,
				["fontSize"] = 12,
				["crop_x"] = 0.41,
				["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura35",
				["selfPoint"] = "CENTER",
				["load"] = {
					["use_class"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["mirror"] = false,
				["useAdjustededMin"] = false,
				["regionType"] = "progresstexture",
				["xOffset"] = -140,
				["blendMode"] = "BLEND",
				["uid"] = "m3sF)UxOR93",
				["authorOptions"] = {
				},
				["slantMode"] = "INSIDE",
				["width"] = 20,
				["alpha"] = 1,
				["backgroundColor"] = {
					0.5, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.5, -- [4]
				},
				["tocversion"] = 11302,
				["semver"] = "1.0.2",
				["compress"] = false,
				["id"] = "Swing MH",
				["foregroundColor"] = {
					1, -- [1]
					0.58823529411765, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["desaturateForeground"] = false,
				["config"] = {
				},
				["inverse"] = true,
				["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
				["orientation"] = "VERTICAL",
				["conditions"] = {
				},
				["startAngle"] = 0,
				["backgroundOffset"] = 2,
			},
		},
		["GDqnDLZfX7L"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["authorOptions"] = {
				},
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "shrink",
					},
					["main"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "alphaPulse",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "slidebottom",
					},
				},
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["desaturate"] = false,
				["glowFrequency"] = 0.25,
				["selfPoint"] = "CENTER",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 2,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["xOffset"] = -48,
				["parent"] = "Classic Rogue HUD by Denzo",
				["regionType"] = "icon",
				["config"] = {
				},
				["glowLength"] = 10,
				["glowYOffset"] = 0,
				["alpha"] = 1,
				["progressPrecision"] = 4,
				["cooldownTextDisabled"] = false,
				["glowScale"] = 1,
				["auto"] = true,
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "AR On",
				["glowXOffset"] = 0,
				["frameStrata"] = 1,
				["anchorFrameType"] = "SCREEN",
				["width"] = 40,
				["uid"] = "GDqnDLZfX7L",
				["inverse"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["auranames"] = {
								"13750", -- [1]
							},
							["subeventPrefix"] = "SPELL",
							["debuffType"] = "HELPFUL",
							["useName"] = true,
							["subeventSuffix"] = "_CAST_START",
							["use_showOn"] = true,
							["spellName"] = 121471,
							["event"] = "Cooldown Progress (Spell)",
							["buffShowOn"] = "showOnActive",
							["realSpellName"] = "Shadow Blades",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["type"] = "aura2",
							["names"] = {
								"Adrenaline Rush", -- [1]
							},
							["unevent"] = "auto",
							["use_unit"] = true,
							["unit"] = "player",
						},
						["untrigger"] = {
							["showOn"] = "showOnReady",
							["spellName"] = 121471,
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["conditions"] = {
				},
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["glowBorder"] = false,
			},
		},
		["cokgQ3k)xTU"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["textFlags"] = "OUTLINE",
				["stacksSize"] = 12,
				["authorOptions"] = {
				},
				["displayText"] = "%p",
				["yOffset"] = -8,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["fontFlags"] = "OUTLINE",
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["wordWrap"] = "WordWrap",
				["barColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["desaturate"] = false,
				["progressPrecision"] = 0,
				["font"] = "Accidental Presidency",
				["sparkOffsetY"] = 2,
				["load"] = {
					["use_petbattle"] = false,
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["difficulty"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["timerColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["regionType"] = "text",
				["stacks"] = false,
				["texture"] = "fer28",
				["textFont"] = "Friz Quadrata TT",
				["borderOffset"] = 1,
				["auto"] = true,
				["tocversion"] = 11302,
				["timerFont"] = "Friz Quadrata TT",
				["alpha"] = 1,
				["borderInset"] = 1,
				["fixedWidth"] = 200,
				["textColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["outline"] = "OUTLINE",
				["sparkOffsetX"] = 0,
				["color"] = {
					1, -- [1]
					0.96078431372549, -- [2]
					0.99607843137255, -- [3]
					1, -- [4]
				},
				["barInFront"] = true,
				["spark"] = true,
				["sparkRotationMode"] = "MANUAL",
				["automaticWidth"] = "Auto",
				["textSize"] = 14,
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["debuffType"] = "HELPFUL",
							["unevent"] = "auto",
							["use_unit"] = true,
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["unit"] = "player",
							["subeventSuffix"] = "_CAST_START",
							["powertype"] = 4,
							["spellIds"] = {
							},
							["names"] = {
							},
							["event"] = "Power",
							["subeventPrefix"] = "SPELL",
							["use_powertype"] = true,
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["stacksFont"] = "Friz Quadrata TT",
				["internalVersion"] = 23,
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["text"] = true,
				["config"] = {
				},
				["stickyDuration"] = false,
				["icon"] = false,
				["backgroundColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0, -- [4]
				},
				["version"] = 3,
				["timer"] = false,
				["height"] = 19.999952316284,
				["timerFlags"] = "None",
				["width"] = 24.000047683716,
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["fontSize"] = 15,
				["rotateText"] = "NONE",
				["displayTextRight"] = "%p",
				["id"] = "CP Text",
				["semver"] = "1.0.2",
				["border"] = true,
				["borderEdge"] = "1 Pixel",
				["timerSize"] = 12,
				["borderSize"] = 1,
				["customTextUpdate"] = "update",
				["icon_side"] = "LEFT",
				["xOffset"] = 0,
				["borderColor"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["sparkHeight"] = 40,
				["borderBackdrop"] = "None",
				["zoom"] = 0,
				["stacksColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["justify"] = "CENTER",
				["stacksFlags"] = "None",
				["sparkHidden"] = "BOTH",
				["uid"] = "cokgQ3k)xTU",
				["frameStrata"] = 3,
				["anchorFrameType"] = "SCREEN",
				["displayTextLeft"] = "%p                    ",
				["selfPoint"] = "CENTER",
				["inverse"] = true,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL_INVERSE",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = -1,
							["variable"] = "incombat",
							["value"] = 0,
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0.60000002384186, -- [4]
								},
								["property"] = "color",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "==",
							["value"] = "0",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0, -- [4]
								},
								["property"] = "color",
							}, -- [1]
						},
					}, -- [2]
				},
				["sparkWidth"] = 15,
				["parent"] = "Classic Rogue HUD by Denzo",
			},
		},
		["4byzl14apuS"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 10,
				["sparkOffsetX"] = 0,
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -7,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["backgroundColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["powertype"] = 4,
							["use_powertype"] = true,
							["debuffType"] = "HELPFUL",
							["names"] = {
							},
							["type"] = "status",
							["custom_hide"] = "timed",
							["subeventSuffix"] = "_CAST_START",
							["power_operator"] = ">=",
							["use_power"] = false,
							["event"] = "Power",
							["use_percentpower"] = false,
							["subeventPrefix"] = "SPELL",
							["unevent"] = "auto",
							["spellIds"] = {
							},
							["unit"] = "player",
							["combopoints_operator"] = ">=",
							["power"] = "2",
							["use_combopoints"] = true,
							["combopoints"] = "2",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["borderBackdrop"] = "None",
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["desaturate"] = false,
				["barColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["stickyDuration"] = false,
				["selfPoint"] = "CENTER",
				["sparkOffsetY"] = 0,
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%n",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 14,
				["useAdjustededMax"] = false,
				["load"] = {
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
							[7] = true,
							[9] = true,
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["use_petbattle"] = false,
					["role"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["use_class"] = true,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["uid"] = "4byzl14apuS",
				["authorOptions"] = {
				},
				["width"] = 46,
				["alpha"] = 1,
				["sparkRotationMode"] = "AUTO",
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["sparkHidden"] = "NEVER",
				["icon_side"] = "RIGHT",
				["auto"] = true,
				["spark"] = false,
				["sparkHeight"] = 30,
				["texture"] = "ElvUI Blank",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "CP2",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["frameStrata"] = 2,
				["anchorFrameType"] = "SCREEN",
				["icon"] = false,
				["config"] = {
				},
				["inverse"] = false,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<",
							["value"] = "2",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0.44999998807907, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
							{
								["value"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									0.5, -- [4]
								},
								["property"] = "sub.5.border_color",
							}, -- [3]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = ">=",
							["variable"] = "power",
							["value"] = "2",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "==",
							["variable"] = "power",
							["value"] = "5",
						},
						["changes"] = {
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [3]
				},
				["xOffset"] = -49,
				["fontFlags"] = "OUTLINE",
			},
		},
		["33O)3bBuB)1"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 10,
				["sparkOffsetX"] = 0,
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -7,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["backgroundColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["powertype"] = 4,
							["use_powertype"] = true,
							["debuffType"] = "HELPFUL",
							["names"] = {
							},
							["type"] = "status",
							["custom_hide"] = "timed",
							["subeventSuffix"] = "_CAST_START",
							["power_operator"] = ">=",
							["use_power"] = false,
							["event"] = "Power",
							["use_percentpower"] = false,
							["subeventPrefix"] = "SPELL",
							["unevent"] = "auto",
							["spellIds"] = {
							},
							["unit"] = "player",
							["combopoints_operator"] = ">=",
							["power"] = "1",
							["use_combopoints"] = true,
							["combopoints"] = "1",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["borderBackdrop"] = "None",
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["desaturate"] = false,
				["barColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["stickyDuration"] = false,
				["selfPoint"] = "CENTER",
				["sparkOffsetY"] = 0,
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%n",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 14,
				["useAdjustededMax"] = false,
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
							[7] = true,
							[9] = true,
						},
					},
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["use_class"] = true,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["uid"] = "33O)3bBuB)1",
				["authorOptions"] = {
				},
				["width"] = 46,
				["alpha"] = 1,
				["sparkRotationMode"] = "AUTO",
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["sparkHidden"] = "NEVER",
				["icon_side"] = "RIGHT",
				["auto"] = true,
				["spark"] = false,
				["sparkHeight"] = 30,
				["texture"] = "ElvUI Blank",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "CP1",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["frameStrata"] = 2,
				["anchorFrameType"] = "SCREEN",
				["icon"] = false,
				["config"] = {
				},
				["inverse"] = false,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<",
							["value"] = "1",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0.44999998807907, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
							{
								["value"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									0.5, -- [4]
								},
								["property"] = "sub.5.border_color",
							}, -- [3]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = ">=",
							["value"] = "1",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "==",
							["value"] = "5",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [3]
				},
				["xOffset"] = -98,
				["fontFlags"] = "OUTLINE",
			},
		},
		["U(nBH0OFW3R"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 5,
				["borderBackdrop"] = "None",
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["xOffset"] = 0,
				["sparkRotationMode"] = "AUTO",
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["fontFlags"] = "OUTLINE",
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["selfPoint"] = "CENTER",
				["backdropInFront"] = false,
				["stickyDuration"] = false,
				["barColor"] = {
					1, -- [1]
					0.66274509803922, -- [2]
					0.13333333333333, -- [3]
					0.40000003576279, -- [4]
				},
				["desaturate"] = false,
				["progressPrecision"] = 0,
				["version"] = 3,
				["sparkOffsetY"] = 0,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p                    ",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 14,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 25,
				["uid"] = "U(nBH0OFW3R",
				["load"] = {
					["use_petbattle"] = false,
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["difficulty"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["useAdjustededMax"] = false,
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["sparkOffsetX"] = -0.5,
				["width"] = 242.5,
				["alpha"] = 1,
				["backgroundColor"] = {
					0.29803921568628, -- [1]
					0.094117647058824, -- [2]
					0, -- [3]
					0, -- [4]
				},
				["smoothProgress"] = true,
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["sparkHidden"] = "BOTH",
				["icon_side"] = "RIGHT",
				["semver"] = "1.0.2",
				["spark"] = false,
				["sparkHeight"] = 35,
				["texture"] = "ElvUI Blank",
				["zoom"] = 0,
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Energy OOFC",
				["icon"] = false,
				["frameStrata"] = 4,
				["anchorFrameType"] = "SCREEN",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["config"] = {
				},
				["inverse"] = false,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["debuffType"] = "HELPFUL",
							["unevent"] = "auto",
							["use_unit"] = true,
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["unit"] = "player",
							["subeventSuffix"] = "_CAST_START",
							["powertype"] = 3,
							["spellIds"] = {
							},
							["names"] = {
							},
							["event"] = "Power",
							["subeventPrefix"] = "SPELL",
							["use_powertype"] = true,
							["custom_hide"] = "timed",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["authorOptions"] = {
				},
			},
		},
		["X4v3mVv9NE0"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["color"] = {
					1, -- [1]
					0, -- [2]
					0.015686274509804, -- [3]
					1, -- [4]
				},
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["unevent"] = "auto",
							["duration"] = "1",
							["event"] = "Health",
							["unit"] = "player",
							["spellIds"] = {
							},
							["use_unit"] = true,
							["names"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["subeventPrefix"] = "SPELL",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 23,
				["selfPoint"] = "CENTER",
				["desaturate"] = false,
				["discrete_rotation"] = 0,
				["version"] = 3,
				["subRegions"] = {
				},
				["height"] = 25,
				["rotate"] = true,
				["load"] = {
					["use_class"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["authorMode"] = true,
				["mirror"] = false,
				["regionType"] = "texture",
				["blendMode"] = "BLEND",
				["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "25 Energy",
				["alpha"] = 1,
				["frameStrata"] = 9,
				["width"] = 2,
				["uid"] = "X4v3mVv9NE0",
				["config"] = {
				},
				["authorOptions"] = {
				},
				["anchorFrameType"] = "SCREEN",
				["xOffset"] = -61,
				["conditions"] = {
				},
				["parent"] = "Classic Rogue HUD by Denzo",
				["rotation"] = 0,
			},
		},
		["(OOThdVm)dl"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["yOffset"] = -73,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["glowXOffset"] = 0,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["glowFrequency"] = 0.25,
				["keepAspectRatio"] = false,
				["desaturate"] = false,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnReady",
							["use_unit"] = true,
							["debuffType"] = "HELPFUL",
							["type"] = "status",
							["subeventSuffix"] = "_CAST_START",
							["use_showOn"] = true,
							["spellName"] = 1856,
							["event"] = "Cooldown Progress (Spell)",
							["unit"] = "player",
							["realSpellName"] = "Vanish",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["names"] = {
							},
							["use_genericShowOn"] = true,
							["unevent"] = "auto",
							["use_track"] = true,
							["subeventPrefix"] = "SPELL",
						},
						["untrigger"] = {
							["showOn"] = "showOnReady",
							["spellName"] = 1856,
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["authorOptions"] = {
				},
				["regionType"] = "icon",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["config"] = {
				},
				["url"] = "https://wago.io/c8AqTuJae/3",
				["glowYOffset"] = 0,
				["alpha"] = 1,
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["glowScale"] = 1,
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Vanish Ready",
				["xOffset"] = 98,
				["frameStrata"] = 1,
				["width"] = 40,
				["anchorFrameType"] = "SCREEN",
				["uid"] = "(OOThdVm)dl",
				["inverse"] = false,
				["parent"] = "Classic Rogue HUD by Denzo",
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 3,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["ingroup"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["conditions"] = {
				},
				["glowLength"] = 10,
				["glowBorder"] = false,
			},
		},
		["XushsZFI9yA"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 10,
				["sparkOffsetX"] = 0,
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -7,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["backgroundColor"] = {
					1, -- [1]
					0.45098039215686, -- [2]
					0.17254901960784, -- [3]
					1, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["powertype"] = 4,
							["use_powertype"] = true,
							["debuffType"] = "HELPFUL",
							["names"] = {
							},
							["type"] = "status",
							["custom_hide"] = "timed",
							["subeventSuffix"] = "_CAST_START",
							["power_operator"] = ">=",
							["use_power"] = false,
							["event"] = "Power",
							["use_percentpower"] = false,
							["subeventPrefix"] = "SPELL",
							["unevent"] = "auto",
							["spellIds"] = {
							},
							["unit"] = "player",
							["combopoints_operator"] = ">=",
							["power"] = "5",
							["use_combopoints"] = true,
							["combopoints"] = "5",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["borderBackdrop"] = "None",
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["desaturate"] = false,
				["barColor"] = {
					1, -- [1]
					0.45098039215686, -- [2]
					0.17254901960784, -- [3]
					1, -- [4]
				},
				["stickyDuration"] = false,
				["selfPoint"] = "CENTER",
				["sparkOffsetY"] = 0,
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%n",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 14,
				["useAdjustededMax"] = false,
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
							[7] = true,
							[9] = true,
						},
					},
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["use_class"] = true,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["uid"] = "XushsZFI9yA",
				["authorOptions"] = {
				},
				["width"] = 45,
				["alpha"] = 1,
				["sparkRotationMode"] = "AUTO",
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["sparkHidden"] = "NEVER",
				["icon_side"] = "RIGHT",
				["auto"] = true,
				["spark"] = false,
				["sparkHeight"] = 30,
				["texture"] = "ElvUI Blank",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "CP5",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["frameStrata"] = 2,
				["anchorFrameType"] = "SCREEN",
				["icon"] = false,
				["config"] = {
				},
				["inverse"] = false,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<",
							["value"] = "5",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0.44999998807907, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
							{
								["value"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									0.5, -- [4]
								},
								["property"] = "sub.5.border_color",
							}, -- [3]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = ">=",
							["variable"] = "power",
							["value"] = "5",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									0.45098039215686, -- [2]
									0.17254901960784, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									1, -- [1]
									0.45098039215686, -- [2]
									0.17254901960784, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "==",
							["value"] = "5",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [3]
				},
				["xOffset"] = 98,
				["fontFlags"] = "OUTLINE",
			},
		},
		["RguwBXZmuII"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["glowLength"] = 10,
				["yOffset"] = -72.999969482422,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["remaining_operator"] = "<",
							["genericShowOn"] = "showAlways",
							["use_specific_unit"] = false,
							["remaining"] = "110",
							["duration"] = "1",
							["subeventPrefix"] = "SPELL",
							["names"] = {
								"Marked for Death", -- [1]
							},
							["spellName"] = 2094,
							["use_absorbMode"] = true,
							["type"] = "status",
							["ownOnly"] = true,
							["subeventSuffix"] = "_CAST_START",
							["buffShowOn"] = "showOnMissing",
							["unevent"] = "auto",
							["event"] = "Cooldown Progress (Spell)",
							["use_remaining"] = false,
							["realSpellName"] = "Blind",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["use_genericShowOn"] = true,
							["unit"] = "target",
							["debuffType"] = "HARMFUL",
							["use_track"] = true,
							["use_unit"] = true,
						},
						["untrigger"] = {
							["genericShowOn"] = "showAlways",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowLines"] = 8,
				["useglowColor"] = false,
				["glowFrequency"] = 0.25,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["glowXOffset"] = 0,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["parent"] = "Classic Rogue HUD by Denzo",
				["authorOptions"] = {
				},
				["config"] = {
				},
				["regionType"] = "icon",
				["xOffset"] = -98,
				["glowYOffset"] = 0,
				["alpha"] = 1,
				["progressPrecision"] = 4,
				["anchorFrameType"] = "SCREEN",
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["zoom"] = 0,
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Blind",
				["icon"] = true,
				["frameStrata"] = 1,
				["width"] = 40,
				["desaturate"] = false,
				["uid"] = "RguwBXZmuII",
				["inverse"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["ROGUE"] = true,
						},
					},
					["use_class"] = false,
					["race"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["single"] = 9,
						["multi"] = {
							[21] = true,
							[20] = true,
							[9] = true,
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 3,
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["ingroup"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 0,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "glow",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "desaturate",
							}, -- [1]
							{
							}, -- [2]
						},
					}, -- [2]
				},
				["cooldown"] = false,
				["glowBorder"] = false,
			},
		},
		["v5DW2XzjNLT"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["yOffset"] = -73,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLength"] = 10,
				["glowLines"] = 8,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["glowFrequency"] = 0.25,
				["cooldownEdge"] = false,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["single"] = 9,
						["multi"] = {
							[21] = true,
							[20] = true,
							[9] = true,
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 3,
						["multi"] = {
							[2] = true,
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["ingroup"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["single"] = 1,
						["multi"] = {
							true, -- [1]
						},
					},
				},
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["desaturate"] = false,
				["parent"] = "Classic Rogue HUD by Denzo",
				["config"] = {
				},
				["regionType"] = "icon",
				["authorOptions"] = {
				},
				["width"] = 40,
				["alpha"] = 1,
				["xOffset"] = -49,
				["glowXOffset"] = 0,
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["zoom"] = 0,
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Feint",
				["icon"] = true,
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["anchorFrameType"] = "SCREEN",
				["uid"] = "v5DW2XzjNLT",
				["inverse"] = false,
				["progressPrecision"] = 4,
				["triggers"] = {
					{
						["trigger"] = {
							["remaining_operator"] = "<",
							["genericShowOn"] = "showAlways",
							["use_specific_unit"] = false,
							["remaining"] = "5",
							["duration"] = "1",
							["names"] = {
								"Marked for Death", -- [1]
							},
							["use_unit"] = true,
							["debuffType"] = "HARMFUL",
							["use_absorbMode"] = true,
							["type"] = "status",
							["ownOnly"] = true,
							["subeventSuffix"] = "_CAST_START",
							["buffShowOn"] = "showOnMissing",
							["unevent"] = "auto",
							["event"] = "Cooldown Progress (Spell)",
							["use_remaining"] = false,
							["realSpellName"] = "Feint",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["use_genericShowOn"] = true,
							["unit"] = "target",
							["spellName"] = 1966,
							["use_track"] = true,
							["subeventPrefix"] = "SPELL",
						},
						["untrigger"] = {
							["genericShowOn"] = "showAlways",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 0,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "glow",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "desaturate",
							}, -- [1]
							{
							}, -- [2]
						},
					}, -- [2]
				},
				["cooldown"] = false,
				["glowBorder"] = false,
			},
		},
		["2ClJKfElz88"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = true,
				["authorOptions"] = {
				},
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["glowXOffset"] = 0,
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["preset"] = "shrink",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["glowFrequency"] = 0.25,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnReady",
							["subeventPrefix"] = "SPELL",
							["debuffType"] = "HELPFUL",
							["type"] = "status",
							["subeventSuffix"] = "_CAST_START",
							["use_showOn"] = true,
							["use_unit"] = true,
							["event"] = "Cooldown Progress (Spell)",
							["names"] = {
							},
							["realSpellName"] = "Adrenaline Rush",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["unit"] = "player",
							["use_genericShowOn"] = true,
							["unevent"] = "auto",
							["use_track"] = true,
							["spellName"] = 13750,
						},
						["untrigger"] = {
							["showOn"] = "showOnReady",
							["spellName"] = 121471,
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["keepAspectRatio"] = false,
				["parent"] = "Classic Rogue HUD by Denzo",
				["glowLength"] = 10,
				["regionType"] = "icon",
				["xOffset"] = -49,
				["config"] = {
				},
				["url"] = "https://wago.io/c8AqTuJae/3",
				["width"] = 40,
				["alpha"] = 1,
				["cooldownTextDisabled"] = false,
				["semver"] = "1.0.2",
				["glowScale"] = 1,
				["zoom"] = 0,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "AR Ready",
				["selfPoint"] = "CENTER",
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["anchorFrameType"] = "SCREEN",
				["uid"] = "2ClJKfElz88",
				["inverse"] = false,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 2,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["desaturate"] = false,
				["conditions"] = {
				},
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["glowBorder"] = false,
			},
		},
		["kRMCSWxaa1s"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 10,
				["borderBackdrop"] = "None",
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -7,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["powertype"] = 4,
							["use_powertype"] = true,
							["debuffType"] = "HELPFUL",
							["names"] = {
							},
							["type"] = "status",
							["custom_hide"] = "timed",
							["subeventSuffix"] = "_CAST_START",
							["power_operator"] = ">=",
							["use_power"] = false,
							["event"] = "Power",
							["use_percentpower"] = false,
							["subeventPrefix"] = "SPELL",
							["unevent"] = "auto",
							["spellIds"] = {
							},
							["unit"] = "player",
							["combopoints_operator"] = ">=",
							["power"] = "4",
							["use_combopoints"] = true,
							["combopoints"] = "4",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["selfPoint"] = "CENTER",
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["xOffset"] = 49,
				["barColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["desaturate"] = false,
				["authorOptions"] = {
				},
				["icon"] = false,
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%n",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 14,
				["useAdjustededMax"] = false,
				["load"] = {
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
							[7] = true,
							[9] = true,
						},
					},
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["use_petbattle"] = false,
					["role"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["use_class"] = true,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["uid"] = "kRMCSWxaa1s",
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["sparkOffsetX"] = 0,
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["sparkRotationMode"] = "AUTO",
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["sparkHidden"] = "NEVER",
				["icon_side"] = "RIGHT",
				["auto"] = true,
				["spark"] = false,
				["sparkHeight"] = 30,
				["texture"] = "ElvUI Blank",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "CP4",
				["sparkOffsetY"] = 0,
				["frameStrata"] = 2,
				["width"] = 46,
				["backgroundColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["config"] = {
				},
				["inverse"] = false,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<",
							["value"] = "4",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0.44999998807907, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
							{
								["value"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									0.5, -- [4]
								},
								["property"] = "sub.5.border_color",
							}, -- [3]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = ">=",
							["variable"] = "power",
							["value"] = "4",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "==",
							["value"] = "5",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [3]
				},
				["stickyDuration"] = false,
				["fontFlags"] = "OUTLINE",
			},
		},
		["22UGU8))kYP"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["glowLength"] = 10,
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["useglowColor"] = false,
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["selfPoint"] = "CENTER",
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["desaturate"] = true,
				["glowFrequency"] = 0.25,
				["icon"] = true,
				["glowXOffset"] = 0,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["xOffset"] = -49,
				["parent"] = "Classic Rogue HUD by Denzo",
				["regionType"] = "icon",
				["uid"] = "22UGU8))kYP",
				["progressPrecision"] = 4,
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 2,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["zoom"] = 0,
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["cooldownTextDisabled"] = false,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "AR CD",
				["authorOptions"] = {
				},
				["frameStrata"] = 3,
				["glowYOffset"] = 0,
				["width"] = 40,
				["config"] = {
				},
				["inverse"] = false,
				["triggers"] = {
					{
						["trigger"] = {
							["use_genericShowOn"] = true,
							["genericShowOn"] = "showOnCooldown",
							["subeventPrefix"] = "SPELL",
							["remaining"] = "160",
							["debuffType"] = "HELPFUL",
							["names"] = {
							},
							["type"] = "status",
							["unit"] = "player",
							["unevent"] = "auto",
							["use_showOn"] = true,
							["spellName"] = 13750,
							["event"] = "Cooldown Progress (Spell)",
							["subeventSuffix"] = "_CAST_START",
							["realSpellName"] = "Adrenaline Rush",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["use_remaining"] = true,
							["use_unit"] = true,
							["duration"] = "1",
							["use_track"] = true,
							["remaining_operator"] = "<",
						},
						["untrigger"] = {
							["showOn"] = "showOnCooldown",
							["spellName"] = 121471,
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["url"] = "https://wago.io/c8AqTuJae/3",
				["conditions"] = {
				},
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["glowBorder"] = false,
			},
		},
		["Uq(e5FoHNwH"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -30,
				["anchorPoint"] = "CENTER",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["type"] = "status",
							["unevent"] = "auto",
							["duration"] = "1",
							["event"] = "Health",
							["unit"] = "player",
							["spellIds"] = {
							},
							["use_unit"] = true,
							["names"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["subeventPrefix"] = "SPELL",
							["debuffType"] = "HELPFUL",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 23,
				["selfPoint"] = "CENTER",
				["desaturate"] = false,
				["discrete_rotation"] = 0,
				["version"] = 3,
				["subRegions"] = {
				},
				["height"] = 25,
				["rotate"] = true,
				["load"] = {
					["use_class"] = true,
					["spec"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["size"] = {
						["multi"] = {
						},
					},
				},
				["mirror"] = false,
				["regionType"] = "texture",
				["blendMode"] = "BLEND",
				["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_FullWhite",
				["xOffset"] = -36,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "35 Energy",
				["width"] = 2,
				["frameStrata"] = 9,
				["anchorFrameType"] = "SCREEN",
				["config"] = {
				},
				["uid"] = "Uq(e5FoHNwH",
				["authorOptions"] = {
				},
				["rotation"] = 0,
				["color"] = {
					1, -- [1]
					0.47450980392157, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["conditions"] = {
				},
				["alpha"] = 1,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
			},
		},
		["H)SjGMI(ZbJ"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["xOffset"] = 0,
				["yOffset"] = 30,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["remaining_operator"] = "<",
							["genericShowOn"] = "showAlways",
							["use_specific_unit"] = false,
							["remaining"] = "10",
							["ownOnly"] = true,
							["subeventPrefix"] = "SPELL",
							["names"] = {
								"Marked for Death", -- [1]
							},
							["spellName"] = 1776,
							["use_absorbMode"] = true,
							["type"] = "status",
							["unevent"] = "auto",
							["subeventSuffix"] = "_CAST_START",
							["use_genericShowOn"] = true,
							["buffShowOn"] = "showOnMissing",
							["event"] = "Cooldown Progress (Spell)",
							["use_remaining"] = false,
							["realSpellName"] = "Gouge",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["unit"] = "target",
							["use_unit"] = true,
							["debuffType"] = "HARMFUL",
							["use_track"] = true,
							["duration"] = "1",
						},
						["untrigger"] = {
							["genericShowOn"] = "showAlways",
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = 1,
				},
				["internalVersion"] = 23,
				["glowXOffset"] = 0,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["stickyDuration"] = false,
				["progressPrecision"] = 4,
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowLines"] = 8,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowFrequency"] = 0.25,
				["desaturate"] = false,
				["glowLength"] = 10,
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["url"] = "https://wago.io/c8AqTuJae/3",
				["selfPoint"] = "CENTER",
				["config"] = {
				},
				["regionType"] = "icon",
				["authorOptions"] = {
				},
				["glowYOffset"] = 0,
				["alpha"] = 1,
				["keepAspectRatio"] = false,
				["anchorFrameType"] = "SCREEN",
				["glowScale"] = 1,
				["semver"] = "1.0.2",
				["cooldownTextDisabled"] = false,
				["zoom"] = 0,
				["auto"] = true,
				["tocversion"] = 11302,
				["id"] = "Gouge",
				["icon"] = true,
				["frameStrata"] = 1,
				["width"] = 40,
				["parent"] = "Classic Rogue HUD by Denzo",
				["uid"] = "H)SjGMI(ZbJ",
				["inverse"] = false,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["role"] = {
						["multi"] = {
						},
					},
					["use_spec"] = true,
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["single"] = 9,
						["multi"] = {
							[21] = true,
							[20] = true,
							[9] = true,
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 2,
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["useglowColor"] = false,
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 0,
						},
						["changes"] = {
							{
								["property"] = "desaturate",
							}, -- [1]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["variable"] = "onCooldown",
							["value"] = 1,
						},
						["changes"] = {
							{
								["value"] = true,
								["property"] = "desaturate",
							}, -- [1]
							{
							}, -- [2]
						},
					}, -- [2]
				},
				["cooldown"] = false,
				["glowBorder"] = false,
			},
		},
		["zN9dSpOwXOD"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["glow"] = false,
				["authorOptions"] = {
				},
				["yOffset"] = -73,
				["anchorPoint"] = "CENTER",
				["cooldownSwipe"] = true,
				["customTextUpdate"] = "update",
				["cooldownEdge"] = false,
				["icon"] = true,
				["triggers"] = {
					{
						["trigger"] = {
							["remaining_operator"] = "<",
							["genericShowOn"] = "showOnCooldown",
							["use_unit"] = true,
							["remaining"] = "10",
							["debuffType"] = "HELPFUL",
							["spellName"] = 1856,
							["type"] = "status",
							["use_genericShowOn"] = true,
							["unevent"] = "auto",
							["use_showOn"] = true,
							["unit"] = "player",
							["event"] = "Cooldown Progress (Spell)",
							["names"] = {
							},
							["realSpellName"] = "Vanish",
							["use_spellName"] = true,
							["spellIds"] = {
							},
							["subeventSuffix"] = "_CAST_START",
							["duration"] = "1",
							["use_remaining"] = false,
							["use_track"] = true,
							["subeventPrefix"] = "SPELL",
						},
						["untrigger"] = {
							["showOn"] = "showOnCooldown",
							["spellName"] = 1856,
						},
					}, -- [1]
					["disjunctive"] = "all",
					["activeTriggerMode"] = -10,
				},
				["internalVersion"] = 23,
				["keepAspectRatio"] = false,
				["animation"] = {
					["start"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
				},
				["stickyDuration"] = false,
				["glowColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["version"] = 3,
				["subRegions"] = {
					{
						["text_shadowXOffset"] = 0,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Accidental Presidency",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = 0,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = true,
						["text_anchorPoint"] = "CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 20,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "OUTLINE",
					}, -- [1]
				},
				["height"] = 40,
				["glowLines"] = 8,
				["xOffset"] = 98,
				["glowFrequency"] = 0.25,
				["load"] = {
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
						},
					},
					["use_class"] = true,
					["race"] = {
						["multi"] = {
						},
					},
					["size"] = {
						["single"] = "arena",
						["multi"] = {
							["arena"] = true,
						},
					},
					["talent2"] = {
						["multi"] = {
						},
					},
					["affixes"] = {
						["multi"] = {
						},
					},
					["talent"] = {
						["multi"] = {
						},
					},
					["use_vehicle"] = false,
					["spec"] = {
						["single"] = 3,
						["multi"] = {
							[3] = true,
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["talent3"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["ingroup"] = {
						["multi"] = {
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
				},
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["glowType"] = "buttonOverlay",
				["glowThickness"] = 1,
				["glowLength"] = 10,
				["selfPoint"] = "CENTER",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
					},
				},
				["regionType"] = "icon",
				["config"] = {
				},
				["desaturate"] = true,
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["glowXOffset"] = 0,
				["cooldownTextDisabled"] = false,
				["tocversion"] = 11302,
				["semver"] = "1.0.2",
				["zoom"] = 0,
				["auto"] = true,
				["glowScale"] = 1,
				["id"] = "Vanish CD",
				["progressPrecision"] = 4,
				["frameStrata"] = 1,
				["glowYOffset"] = 0,
				["width"] = 40,
				["uid"] = "zN9dSpOwXOD",
				["inverse"] = false,
				["parent"] = "Classic Rogue HUD by Denzo",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["conditions"] = {
				},
				["useglowColor"] = false,
				["glowBorder"] = false,
			},
		},
		["ToyFSn)k39L"] = {
			["skippedVersions"] = {
			},
			["source"] = "import",
			["lastUpdate"] = 1567202116,
			["allowUpdates"] = true,
			["data"] = {
				["sparkWidth"] = 10,
				["borderBackdrop"] = "None",
				["parent"] = "Classic Rogue HUD by Denzo",
				["yOffset"] = -7,
				["anchorPoint"] = "CENTER",
				["sparkRotation"] = 0,
				["customTextUpdate"] = "update",
				["url"] = "https://wago.io/c8AqTuJae/3",
				["actions"] = {
					["start"] = {
					},
					["init"] = {
					},
					["finish"] = {
						["do_glow"] = false,
						["glow_action"] = "hide",
						["do_sound"] = false,
					},
				},
				["triggers"] = {
					{
						["trigger"] = {
							["duration"] = "1",
							["genericShowOn"] = "showOnActive",
							["use_unit"] = true,
							["powertype"] = 4,
							["use_powertype"] = true,
							["debuffType"] = "HELPFUL",
							["names"] = {
							},
							["type"] = "status",
							["custom_hide"] = "timed",
							["subeventSuffix"] = "_CAST_START",
							["power_operator"] = ">=",
							["use_power"] = false,
							["event"] = "Power",
							["use_percentpower"] = false,
							["subeventPrefix"] = "SPELL",
							["unevent"] = "auto",
							["spellIds"] = {
							},
							["unit"] = "player",
							["combopoints_operator"] = ">=",
							["power"] = "3",
							["use_combopoints"] = true,
							["combopoints"] = "3",
						},
						["untrigger"] = {
						},
					}, -- [1]
					["disjunctive"] = "any",
					["activeTriggerMode"] = 1,
				},
				["icon_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["internalVersion"] = 23,
				["selfPoint"] = "CENTER",
				["animation"] = {
					["start"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
					["main"] = {
						["type"] = "none",
						["duration_type"] = "seconds",
					},
					["finish"] = {
						["type"] = "preset",
						["duration_type"] = "seconds",
						["preset"] = "fade",
					},
				},
				["backdropInFront"] = false,
				["xOffset"] = 0,
				["barColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["desaturate"] = false,
				["authorOptions"] = {
				},
				["icon"] = false,
				["version"] = 3,
				["subRegions"] = {
					{
						["border_offset"] = 1,
						["border_anchor"] = "bar",
						["border_size"] = 1,
						["border_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["border_visible"] = true,
						["border_edge"] = "1 Pixel",
						["type"] = "subborder",
					}, -- [1]
					{
						["type"] = "aurabar_bar",
					}, -- [2]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%p",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_RIGHT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [3]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%n",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "INNER_LEFT",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [4]
					{
						["text_shadowXOffset"] = 1,
						["type"] = "subtext",
						["text_text"] = "%s",
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["text_font"] = "Friz Quadrata TT",
						["text_shadowColor"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["text_shadowYOffset"] = -1,
						["text_selfPoint"] = "AUTO",
						["text_visible"] = false,
						["text_anchorPoint"] = "ICON_CENTER",
						["anchorYOffset"] = 0,
						["text_fontSize"] = 12,
						["rotateText"] = "NONE",
						["anchorXOffset"] = 0,
						["text_fontType"] = "None",
					}, -- [5]
				},
				["height"] = 14,
				["useAdjustededMax"] = false,
				["load"] = {
					["talent2"] = {
						["multi"] = {
						},
					},
					["use_never"] = false,
					["talent"] = {
						["multi"] = {
							[7] = true,
							[9] = true,
						},
					},
					["use_petbattle"] = false,
					["class"] = {
						["single"] = "ROGUE",
						["multi"] = {
							["MONK"] = true,
							["ROGUE"] = true,
						},
					},
					["ingroup"] = {
						["multi"] = {
						},
					},
					["role"] = {
						["multi"] = {
						},
					},
					["difficulty"] = {
						["multi"] = {
						},
					},
					["race"] = {
						["multi"] = {
						},
					},
					["spec"] = {
						["multi"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
						},
					},
					["pvptalent"] = {
						["multi"] = {
						},
					},
					["faction"] = {
						["multi"] = {
						},
					},
					["use_combat"] = true,
					["use_class"] = true,
					["size"] = {
						["multi"] = {
						},
					},
				},
				["sparkBlendMode"] = "ADD",
				["backdropColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["uid"] = "ToyFSn)k39L",
				["sparkColor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["sparkOffsetX"] = 0,
				["anchorFrameType"] = "SCREEN",
				["alpha"] = 1,
				["sparkRotationMode"] = "AUTO",
				["useAdjustededMin"] = false,
				["regionType"] = "aurabar",
				["borderInFront"] = false,
				["sparkHidden"] = "NEVER",
				["icon_side"] = "RIGHT",
				["auto"] = true,
				["spark"] = false,
				["sparkHeight"] = 30,
				["texture"] = "ElvUI Blank",
				["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
				["zoom"] = 0,
				["semver"] = "1.0.2",
				["tocversion"] = 11302,
				["id"] = "CP3",
				["sparkOffsetY"] = 0,
				["frameStrata"] = 2,
				["width"] = 46,
				["backgroundColor"] = {
					1, -- [1]
					0.72941176470588, -- [2]
					0.28235294117647, -- [3]
					1, -- [4]
				},
				["config"] = {
				},
				["inverse"] = false,
				["sparkDesature"] = false,
				["orientation"] = "HORIZONTAL",
				["conditions"] = {
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "<",
							["variable"] = "power",
							["value"] = "3",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									0, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.29803921568628, -- [1]
									0.094117647058824, -- [2]
									0, -- [3]
									0.44999998807907, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
							{
								["value"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									0.5, -- [4]
								},
								["property"] = "sub.5.border_color",
							}, -- [3]
						},
					}, -- [1]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = ">=",
							["value"] = "3",
							["variable"] = "power",
						},
						["changes"] = {
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									1, -- [1]
									0.72941176470588, -- [2]
									0.28235294117647, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [2]
					{
						["check"] = {
							["trigger"] = 1,
							["op"] = "==",
							["variable"] = "power",
							["value"] = "5",
						},
						["changes"] = {
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "barColor",
							}, -- [1]
							{
								["value"] = {
									0.80392156862745, -- [1]
									0.65490196078431, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["property"] = "backgroundColor",
							}, -- [2]
						},
					}, -- [3]
				},
				["stickyDuration"] = false,
				["fontFlags"] = "OUTLINE",
			},
		},
	},
	["clearOldHistory"] = 30,
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = -75.0738525390625,
		["width"] = 830,
		["height"] = 665,
		["yOffset"] = -35.5,
	},
	["editor_theme"] = "Monokai",
}
