-- $Id: Data.lua 42 2019-09-07 16:37:35Z arith $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2011 ~ 2019 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]
-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local pairs = _G.pairs
-- Libraries
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...
local LibStub = _G.LibStub
local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local BF = Atlas_GetLocaleLibBabble("LibBabble-Faction-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
local ALIL = Atlas_IngameLocales
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")
local addon = Atlas:GetModule(private.module_name)

local db = {}
addon.db = db

local BLUE = "|cff6666ff"
local GREN = "|cff66cc33"
local GREY = "|cff999999"
local LBLU = "|cff33cccc"
local _RED = "|cffcc3333"
local ORNG = "|cffcc9933"
local PINK = "|ccfcc33cc"
local PURP = "|cff9900ff"
local WHIT = "|cffffffff"
local YLOW = "|cffcccc33"
local INDENT = "      "

db.AtlasMaps = {
--************************************************
-- Eastern Kingdoms Instances (Classic)
--************************************************
	BlackrockMountainEnt = {
		ZoneName = { BZ["Blackrock Mountain"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		LevelRange = "47-85+",
		MinLevel = "42",
		PlayerLimit = { 5, 10, 25, 40},
		Acronym = L["BRM"],
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..BZ["Searing Gorge"], 10001 },
		{ BLUE.." B) "..BZ["Burning Steppes"], 10002 },
		{ BLUE.." C) "..BZ["Blackrock Depths"], 10003 },
		{ BLUE.." D) "..BZ["Lower Blackrock Spire"], 10004 },
		{ BLUE..INDENT..BZ["Upper Blackrock Spire"] },
		{ GREN..INDENT..ALC["Bodley"]..ALC["L-Parenthesis"]..L["Ghost"]..ALC["R-Parenthesis"] },
		{ BLUE.." E) "..BZ["The Molten Core"], 10005 },
		{ GREN..INDENT..L["Lothos Riftwaker"] },
		{ BLUE.." F) "..BZ["Blackwing Lair"], 10006 },
		{ GREN..INDENT..ALC["Orb of Command"] },
		{ BLUE.." G) "..BZ["Blackrock Caverns"], 10007 },
		{ ORNG.." 1) "..ALC["Scarshield Quartermaster <Scarshield Legion>"]..ALC["L-Parenthesis"]..ALC["Upper"]..ALC["R-Parenthesis"], 10008 },
		{ ORNG.." 2) "..ALC["The Behemoth"]..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Wanders"]..ALC["R-Parenthesis"], 10009 },
		{ ORNG.." 3) "..Atlas:GetBossName("Overmaster Pyron")..ALC["L-Parenthesis"]..ALC["Wanders"]..ALC["R-Parenthesis"], 10010 },
		{ GREN.." 1') "..ALC["Meeting Stone"]..ALC["L-Parenthesis"]..BZ["Blackrock Depths"]..ALC["R-Parenthesis"], 10011 },
		{ GREN.." 2') "..ALC["Meeting Stone"]..ALC["L-Parenthesis"]..BZ["Lower Blackrock Spire"]..ALC["Comma"]..BZ["Upper Blackrock Spire"]..ALC["R-Parenthesis"], 10012 },
	},
	BlackrockDepths = {
		ZoneName = { BZ["Blackrock Mountain"]..ALC["Colon"]..BZ["Blackrock Depths"] },
		Location = { BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		LevelRange = "48-60",
		MinLevel = "42",
		PlayerLimit = { 5 },
		Acronym = L["BRD"],
		WorldMapID = 242,
		JournalInstanceID = 228,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Lord Roccor", 370)..ALC["L-Parenthesis"]..ALC["Wanders"]..ALC["R-Parenthesis"], 370 },
		{ WHIT.." 2) "..Atlas:GetBossName("Kharan Mighthammer") },
		{ WHIT.." 3) "..Atlas:GetBossName("Commander Gor'shak") },
		{ WHIT.." 4) "..Atlas:GetBossName("Marshal Windsor") },
		{ WHIT.." 5) "..Atlas:GetBossName("High Interrogator Gerstahn", 369), 369 },
		{ WHIT.." 6) "..Atlas:GetBossName("Ring of Law", 372), 372 },
		{ WHIT..INDENT..Atlas:GetBossName("Anub'shiah")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Eviscerator")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Gorosh the Dervish")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Grizzle")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Hedrum the Creeper")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Ok'thor the Breaker")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Theldren")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Lefty") },
		{ WHIT..INDENT..Atlas:GetBossName("Malgen Longspear") },
		{ WHIT..INDENT..Atlas:GetBossName("Gnashjaw") },
		{ WHIT..INDENT..Atlas:GetBossName("Rotfang") },
		{ WHIT..INDENT..Atlas:GetBossName("Va'jashni") },
		{ WHIT..INDENT..Atlas:GetBossName("Houndmaster Grebmar", 371), 371 },
		{ WHIT..INDENT..L["Elder Morndeep"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("High Justice Grimstone", 372, 1), 372 },
		{ WHIT.." 7) "..Atlas:GetBossName("Monument of Franclorn Forgewright") },
		{ WHIT..INDENT..Atlas:GetBossName("Pyromancer Loregrain", 373), 373 },
		{ WHIT.." 8) "..L["The Vault"] },
		{ WHIT..INDENT..Atlas:GetBossName("Warder Stilgiss", 375), 375 },
		{ WHIT..INDENT..Atlas:GetBossName("Verek") },
		{ WHIT..INDENT..L["Watchman Doomgrip"] },
		{ WHIT.." 9) "..Atlas:GetBossName("Fineous Darkvire", 376)..ALC["L-Parenthesis"]..ALC["Wanders"]..ALC["R-Parenthesis"], 376 },
		{ WHIT.."10) "..L["The Black Anvil"] },
		{ WHIT..INDENT..Atlas:GetBossName("Lord Incendius", 374), 374 },
		{ WHIT.."11) "..Atlas:GetBossName("Bael'Gar", 377), 377 },
		{ WHIT.."12) "..L["The Shadowforge Lock"], 10009 },
		{ WHIT.."13) "..Atlas:GetBossName("General Angerforge", 378), 378 },
		{ WHIT.."14) "..Atlas:GetBossName("Golem Lord Argelmach", 379), 379 },
		{ WHIT..INDENT..L["Schematic: Field Repair Bot 74A"] },
		{ WHIT..INDENT..ALC["Blacksmithing Plans"] },
		{ WHIT.."15) "..Atlas:GetBossName("The Grim Guzzler") },
		{ WHIT..INDENT..Atlas:GetBossName("Hurley Blackbreath", 380), 380 },
		{ WHIT..INDENT..Atlas:GetBossName("Lokhtos Darkbargainer") },
		{ WHIT..INDENT..L["Mistress Nagmara"] }, 
		{ WHIT..INDENT..Atlas:GetBossName("Phalanx", 381), 381 },
		{ WHIT..INDENT..Atlas:GetBossName("Plugger Spazzring", 383), 383 },
		{ WHIT..INDENT..L["Private Rocknot"] },
		{ WHIT..INDENT..Atlas:GetBossName("Ribbly Screwspigot", 382), 382 },
		{ WHIT.."16) "..Atlas:GetBossName("Ambassador Flamelash", 384), 384 },
		{ WHIT.."17) "..Atlas:GetBossName("Panzor the Invincible")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Wanders"]..ALC["R-Parenthesis"], 10004 },
		{ WHIT..INDENT..ALC["Blacksmithing Plans"], 10010 },
		{ WHIT.."18) "..L["Summoner's Tomb"] },
		{ WHIT.."19) "..Atlas:GetBossName("The Lyceum") },
		{ WHIT.."20) "..Atlas:GetBossName("Magmus", 386), 386 },
		{ WHIT.."21) "..Atlas:GetBossName("Emperor Dagran Thaurissan", 387), 387 },
		{ WHIT..INDENT..Atlas:GetBossName("Princess Moira Bronzebeard") },
		{ WHIT.."22) "..L["The Black Forge"], 10016 },
		{ WHIT.."23) "..BZ["The Molten Core"], 10003 },
		{ WHIT..INDENT..L["Core Fragment"], 10017 },
		{ WHIT.."24) "..Atlas:GetBossName("Overmaster Pyron") },
		{ WHIT.."25) "..ALC["Blacksmithing Plans"], 10010 },
	},
	BlackrockSpireLower = {
		ZoneName = { BZ["Blackrock Mountain"]..ALC["Colon"]..BZ["Lower Blackrock Spire"] },
		Location = { BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		LevelRange = "48-55",
		MinLevel = "48",
		PlayerLimit = { 5 },
		DungeonID = 32,
		Acronym = L["LBRS"],
		WorldMapID = 906,
		JournalInstanceID = 229,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Vaelan") },
		{ WHIT.." 2) "..Atlas:GetBossName("Warosh") },
		{ WHIT..INDENT..L["Elder Stonefort"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"], 10012 },
		{ WHIT.." 3) "..L["Bijou"] },
		{ WHIT.." 4) "..L["Roughshod Pike"] },
		{ WHIT.." 5) "..Atlas:GetBossName("Spirestone Butcher")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10006 },
		{ WHIT.." 6) "..Atlas:GetBossName("Highlord Omokk", 388), 388 },
		{ WHIT..INDENT..Atlas:GetBossName("Spirestone Battle Lord")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10007 },
		{ WHIT..INDENT..Atlas:GetBossName("Spirestone Lord Magus")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 7) "..Atlas:GetBossName("Shadow Hunter Vosh'gajin", 389), 389 },
		{ WHIT..INDENT..L["Fifth Mosh'aru Tablet"] },
		{ WHIT.." 3) "..Atlas:GetBossName("War Master Voone", 390), 390 },
		{ WHIT..INDENT..L["Sixth Mosh'aru Tablet"] },
		{ WHIT..INDENT..Atlas:GetBossName("Mor Grayhoof")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 9) "..L["Human Remains"] },
		{ WHIT..INDENT..L["Unfired Plate Gauntlets"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Bannok Grimaxe")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10008 },
		{ WHIT.." 4) "..Atlas:GetBossName("Mother Smolderweb", 391), 391 },
		{ WHIT.." 4) "..Atlas:GetBossName("Crystal Fang")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10009 },
		{ WHIT.." 5) "..Atlas:GetBossName("Urok Doomhowl", 392)..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 392 },
		{ WHIT.." 6) "..Atlas:GetBossName("Quartermaster Zigris", 393), 393 },
		{ WHIT.." 7) "..Atlas:GetBossName("Halycon", 394), 394 },
		{ WHIT..INDENT..Atlas:GetBossName("Gizrul the Slavener", 395), 395 },
		{ WHIT.." 6) "..Atlas:GetBossName("Ghok Bashguud")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10010 },
		{ WHIT.." 8) "..Atlas:GetBossName("Overlord Wyrmthalak", 396), 396 },
		{ WHIT.." 1) "..Atlas:GetBossName("Burning Felguard")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Summon"]..ALC["R-Parenthesis"], 10005 },
	},
	BlackrockSpireUpper = {
		ZoneName = { BZ["Blackrock Mountain"]..ALC["Colon"]..BZ["Upper Blackrock Spire"] },
		Location = { BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		DungeonID = 828,
		DungeonHeroicID = 860,
		DungeonMythicID = 1004,
		LevelRange = "48-55",
		MinLevel = "48",
		PlayerLimit = { 5 },
		Acronym = L["UBRS"],
		WorldMapID = 616,
		JournalInstanceID = 559,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ WHIT.." 1) "..Atlas_GetBossName("Pyroguard Emberseer") },
		{ WHIT.." 2) "..Atlas_GetBossName("Solakar Flamewreath") },
		{ WHIT..INDENT..L["Father Flame"] },
		{ WHIT.." 3) "..Atlas_GetBossName("Jed Runewatcher")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 4) "..Atlas_GetBossName("Goraluk Anvilcrack") },
		{ WHIT.." 5) "..Atlas_GetBossName("Warchief Rend Blackhand")  },
		{ WHIT..INDENT..Atlas_GetBossName("Gyth") },
		{ WHIT.." 6) "..L["Awbee"] },
		{ WHIT.." 7) "..Atlas_GetBossName("The Beast") },
		{ WHIT..INDENT..Atlas_GetBossName("Lord Valthalak"), ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..L["Finkle Einhorn"] },
		{ WHIT.." 8) "..Atlas_GetBossName("General Drakkisath") },
		{ WHIT..INDENT..L["Doomrigger's Clasp"] },
		{ WHIT..INDENT..L["Drakkisath's Brand"] },
		{ WHIT.." 9) "..BZ["Blackwing Lair"] },
	},
	BlackwingLair = {
		ZoneName = { BZ["Blackrock Mountain"]..ALC["Colon"]..BZ["Blackwing Lair"] },
		Location = { BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		LevelRange = "60",
		DungeonID = 50,
		PlayerLimit = { 40 },
		WorldMapID = 287,
		JournalInstanceID = 742,
		Acronym = L["BWL"],
		Module = "Atlas_ClassicWoW",
		{ ORNG..ALC["Attunement Required"] },
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B-C) "..ALC["Connection"], 10002 },
		{ WHIT.." 1) "..Atlas:GetBossName("Razorgore the Untamed", 1529), 1529 },
		{ WHIT.." 2) "..Atlas:GetBossName("Vaelastrasz the Corrupt", 1530), 1530 },
		{ WHIT.." 3) "..Atlas:GetBossName("Broodlord Lashlayer", 1531), 1531 },
		{ WHIT.." 4) "..Atlas:GetBossName("Firemaw", 1532), 1532 },
		{ WHIT.." 5) "..Atlas:GetBossName("Ebonroc", 1533), 1533 },
		{ WHIT.." 6) "..Atlas:GetBossName("Flamegor", 1534), 1534 },
		{ WHIT.." 7) "..Atlas:GetBossName("Chromaggus", 1535), 1535 },
		{ WHIT.." 8) "..Atlas:GetBossName("Nefarian", 1536), 1536 },
		{ WHIT.." 9)"..L["Master Elemental Shaper Krixix"] },
	},
	GnomereganEnt = {
		ZoneName = { BZ["Gnomeregan"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Dun Morogh"] },
		LevelRange = "26-36",
		MinLevel = "19",
		PlayerLimit = { 5 },
		DungeonID = 14,
		Acronym = L["Gnome"],
		WorldMapID = 226,
		JournalInstanceID = 231,
		Module = "Atlas_ClassicWoW",
		NextMap = "Gnomeregan",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ GREN..INDENT..ALC["Meeting Stone"] },
		{ BLUE.." B) "..BZ["Gnomeregan"]..ALC["L-Parenthesis"]..ALC["Front"]..ALC["R-Parenthesis"], 10002 },
		{ BLUE.." C) "..BZ["Gnomeregan"]..ALC["L-Parenthesis"]..ALC["Back"]..ALC["R-Parenthesis"], 10003 },
		{ GREN.." 1') "..ALC["Elevator"], 10004 },
		{ GREN..INDENT..L["Torben Zapblast <Teleportation Specialist>"] },
		{ GREN.." 2') "..L["Mail Box"], 10005 },
	},
	Gnomeregan = {
		ZoneName = { BZ["Gnomeregan"] },
		Location = { BZ["Dun Morogh"] },
		LevelRange = "26-36",
		MinLevel = "19",
		PlayerLimit = { 5 },
		DungeonID = 14,
		Acronym = L["Gnome"],
		WorldMapID = 226,
		JournalInstanceID = 231,
		Module = "Atlas_ClassicWoW",
		PrevMap = "GnomereganEnt",
		{ BLUE.." A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Front"]..ALC["R-Parenthesis"], 10001 },
		{ BLUE.." B) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Back"]..ALC["R-Parenthesis"], 10002 },
		{ WHIT.." 1) "..L["Blastmaster Emi Shortfuse"] },
		{ WHIT..INDENT..Atlas:GetBossName("Grubbis", 419), 419 },
		{ WHIT..INDENT..L["Chomper"] },
		{ WHIT.." 2) "..BZ["The Clean Zone"], 10005 },
		{ WHIT..INDENT..L["Tink Sprocketwhistle <Engineering Supplies>"] },
		{ WHIT..INDENT..L["The Sparklematic 5200"] },
		{ WHIT..INDENT..ALC["Mail Box"] },
		{ WHIT.." 3) "..L["Kernobee"] },
		{ WHIT..INDENT..L["Alarm-a-bomb 2600"] },
		{ WHIT..INDENT..L["Matrix Punchograph 3005-B"] },
		{ WHIT.." 4) "..Atlas:GetBossName("Viscous Fallout", 420)..ALC["L-Parenthesis"]..ALC["Wanders"]..ALC["R-Parenthesis"], 420 },
		{ WHIT.." 5) "..Atlas:GetBossName("Electrocutioner 6000", 421), 421 },
		{ WHIT..INDENT..L["Matrix Punchograph 3005-C"] },
		{ WHIT.." 6) "..Atlas:GetBossName("Crowd Pummeler 9-60", 418), 418 },
		{ WHIT..INDENT..L["Matrix Punchograph 3005-D"] },
		{ WHIT.." 7) "..L["Dark Iron Ambassador"] },
		{ WHIT.." 8) "..Atlas:GetBossName("Mekgineer Thermaplugg", 422), 422 },
	},
	MoltenCore = {
		ZoneName = { BZ["Blackrock Mountain"]..ALC["Colon"]..BZ["The Molten Core"] },
		Location = { BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		DungeonID = 48,
		LevelRange = "60",
		Acronym = L["MC"],
		PlayerLimit = { 40 },
		WorldMapID = 232,
		JournalInstanceID = 741,
		Module = "Atlas_ClassicWoW",
		{ ORNG..ALC["Attunement Required"] },
		{ ORNG..REPUTATION..ALC["Colon"]..BF["Hydraxian Waterlords"] },
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Lucifron", 1519), 1519 },
		{ WHIT.." 2) "..Atlas:GetBossName("Magmadar", 1520), 1520 },
		{ WHIT.." 3) "..Atlas:GetBossName("Gehennas", 1521), 1521 },
		{ WHIT.." 4) "..Atlas:GetBossName("Garr", 1522), 1522 },
		{ WHIT.." 5) "..Atlas:GetBossName("Shazzrah", 1523), 1523 },
		{ WHIT.." 6) "..Atlas:GetBossName("Baron Geddon", 1524), 1524 },
		{ WHIT.." 7) "..Atlas:GetBossName("Golemagg the Incinerator", 1526), 1526 },
		{ WHIT.." 8) "..Atlas:GetBossName("Sulfuron Harbinger", 1525), 1525 },
		{ WHIT.." 9) "..Atlas:GetBossName("Majordomo Executus", 1527), 1527 },
		{ WHIT.."10) "..Atlas:GetBossName("Ragnaros", 1528), 1528 },
	},
	ScarletMonasteryEnt = {
		ZoneName = { BZ["Scarlet Monastery"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Tirisfal Glades"] },
		LevelRange = "26-45",
		MinLevel = "21",
		PlayerLimit = { 5 },
		Acronym = L["SM"],
		Module = "Atlas_ClassicWoW",
		PrevMap = "ScarletMonastery",
		NextMap = "ScarletHalls",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..ALC["Graveyard"] },
		{ BLUE.." C) "..L["Cathedral"] },
		{ BLUE.." D) "..L["Armory"] },
		{ BLUE.." E) "..L["Library"] },
	},
	SMLibrary = {
		ZoneName = { BZ["Scarlet Monastery"]..ALC["Colon"]..L["Library"] },
		Location = { BZ["Tirisfal Glades"] },
		LevelRange = "26-45",
		MinLevel = "21",
		PlayerLimit = { 5 },
		Acronym = L["Lib"],
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Houndmaster Loksey") },
		{ WHIT.." 2) "..Atlas:GetBossName("Arcanist Doan") },
	},
	SMArmory = {
		ZoneName = { BZ["Scarlet Monastery"]..ALC["Colon"]..L["Armory"] },
		Location = { BZ["Tirisfal Glades"] },
		LevelRange = "26-45",
		MinLevel = "21",
		PlayerLimit = { 5 },
		Acronym = L["Armory"],
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Herod") },
	},
	SMCathedral = {
		ZoneName = { BZ["Scarlet Monastery"]..ALC["Colon"]..L["Cathedral"] },
		Location = { BZ["Tirisfal Glades"] },
		LevelRange = "26-45",
		MinLevel = "21",
		PlayerLimit = { 5 },
		Acronym = L["Cath"],
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ WHIT.." 1) "..Atlas:GetBossName("High Inquisitor Fairbanks") },
		{ WHIT.." 2) "..Atlas:GetBossName("Scarlet Commander Mograine") },
		{ WHIT.." 3) "..Atlas:GetBossName("High Inquisitor Whitemane") },
	},
	SMGraveyard = {
		ZoneName = { BZ["Scarlet Monastery"]..ALC["Colon"]..ALC["Graveyard"] },
		Location = { BZ["Tirisfal Glades"] },
		LevelRange = "26-45",
		MinLevel = "21",
		PlayerLimit = { 5 },
		Acronym = L["GY"],
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Interrogator Vishas") },
		{ WHIT..INDENT..L["Vorrel Sengutz"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Ironspine")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Azshir the Sleepless")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 4) "..Atlas:GetBossName("Fallen Champion")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 5) "..Atlas:GetBossName("Bloodmage Thalnos") },
	},
	Scholomance = {
		ZoneName = { BZ["Scholomance"] },
		Location = { BZ["Western Plaguelands"] },
		DungeonID = 2,
		DungeonHeroicID = 472,
		LevelRange = "58-60",
		PlayerLimit = { 5 },
		Acronym = L["Scholo"],
		WorldMapID = 476,
		JournalInstanceID = 246,
		Module = "Atlas_ClassicWoW",
		{ ORNG..ALC["Key"]..ALC["Colon"]..L["Blood of Innocents"]..ALC["L-Parenthesis"]..Atlas:GetBossName("Kirtonos the Herald")..ALC["R-Parenthesis"] },
		{ ORNG..ALC["Key"]..ALC["Colon"]..L["Divination Scryer"]..ALC["L-Parenthesis"]..Atlas:GetBossName("Death Knight Darkreaver")..ALC["R-Parenthesis"] },
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B-C) "..ALC["Stairway"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Blood Steward of Kirtonos") },
		{ WHIT..INDENT..L["The Deed to Southshore"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Kirtonos the Herald")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Jandice Barov") },
		{ WHIT.." 4) "..L["The Deed to Tarren Mill"] },
		{ WHIT.." 5) "..Atlas:GetBossName("Rattlegore")..ALC["L-Parenthesis"]..ALC["Lower"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Death Knight Darkreaver")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 6) "..Atlas:GetBossName("Marduk Blackpool") },
		{ WHIT..INDENT..Atlas:GetBossName("Vectus") },
		{ WHIT.." 7) "..Atlas:GetBossName("Ras Frostwhisper") },
		{ WHIT..INDENT..L["The Deed to Brill"] },
		{ WHIT..INDENT..Atlas:GetBossName("Kormok")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 8) "..Atlas:GetBossName("Instructor Malicia") },	
		{ WHIT.." 9) "..Atlas:GetBossName("Doctor Theolen Krastinov") },
		{ WHIT.."10) "..Atlas:GetBossName("Lorekeeper Polkelt") },
		{ WHIT.."11) "..Atlas:GetBossName("The Ravenian") },
		{ WHIT.."12) "..Atlas:GetBossName("Lord Alexei Barov") },
		{ WHIT..INDENT..L["The Deed to Caer Darrow"] },
		{ WHIT.."13) "..Atlas:GetBossName("Lady Illucia Barov") },
		{ WHIT.."14) "..Atlas:GetBossName("Darkmaster Gandling") },
		{ GREN.." 1') "..L["Torch Lever"] },
		{ GREN.." 2') "..L["Secret Chest"] },
		{ GREN.." 3') "..L["Alchemy Lab"] },
	},
	ShadowfangKeep = {
		ZoneName = { BZ["Shadowfang Keep"] },
		Location = { BZ["Silverpine Forest"] },
		DungeonID = 8,
		DungeonHeroicID = 327,
		LevelRange = "18-30",
		PlayerLimit = { 5 },
		Acronym = L["SFK"],
		WorldMapID = 310,
		JournalInstanceID = 64,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..ALC["Walkway"] },
		{ BLUE.." C) "..ALC["Walkway"] },
		{ BLUE..INDENT..Atlas:GetBossName("Deathsworn Captain")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Deathstalker Adamant") },
		{ WHIT..INDENT..Atlas:GetBossName("Sorcerer Ashcrombe") },
		{ WHIT..INDENT..Atlas:GetBossName("Rethilgore")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["Comma"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Razorclaw the Butcher")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["Comma"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Baron Silverlaine", 97), 97 },
		{ WHIT.." 4) "..Atlas:GetBossName("Commander Springvale", 98), 98 },
		{ WHIT.." 5) "..Atlas:GetBossName("Odo the Blindwatcher")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["Comma"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 6) "..Atlas:GetBossName("Fenrus the Devourer") },
		{ WHIT.." 7) "..Atlas:GetBossName("Wolf Master Nandos")..ALC["L-Parenthesis"]..ALC["Random"]..ALC["Comma"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 8) "..Atlas:GetBossName("Archmage Arugal") },
		{ WHIT.." 9) "..Atlas:GetBossName("Fel Steed") },
		{ WHIT..INDENT..L["Jordan's Hammer"] },
	},
	Stratholme = {
		ZoneName = { BZ["Stratholme"] },
		Location = { BZ["Eastern Plaguelands"] },
		Acronym = L["Strat"],
		LevelRange = "48-58",
		PlayerLimit = { 5 },
		Module = "Atlas_ClassicWoW",
		{ ORNG..ALC["Key"]..ALC["Colon"]..L["Various Postbox Keys"]..ALC["L-Parenthesis"]..Atlas:GetBossName("Postmaster Malown")..ALC["R-Parenthesis"] },
		{ BLUE.." A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Front"]..ALC["R-Parenthesis"] },
		{ BLUE.." B) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Side"]..ALC["R-Parenthesis"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Skul")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..L["Stratholme Courier"], 10002 },
		{ WHIT..INDENT..L["Fras Siabi"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Atiesh")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Hearthsinger Forresten", 443)..ALC["L-Parenthesis"]..ALC["Varies"]..ALC["R-Parenthesis"], 10003 , 443 },
		{ WHIT.." 4) "..Atlas:GetBossName("The Unforgiven", 450), 450 },
		{ WHIT.." 5) "..L["Elder Farwhisper"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"], 10007 },
		{ WHIT.." 6) "..Atlas:GetBossName("Timmy the Cruel", 445), 445 },
		{ WHIT.." 7) "..Atlas:GetBossName("Malor the Zealous") },
		{ WHIT..INDENT..L["Medallion of Faith"] },
		{ WHIT.." 8) "..Atlas:GetBossName("Crimson Hammersmith")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..ALC["Blacksmithing Plans"] },
		{ WHIT.." 9) "..Atlas:GetBossName("Cannon Master Willey") },
		{ WHIT.."10) "..Atlas:GetBossName("Archivist Galford") },
		{ WHIT.."11) "..Atlas:GetBossName("Grand Crusader Dathrohan") },
		{ WHIT..INDENT..Atlas:GetBossName("Balnazzar", 449), 449 },
		{ WHIT..INDENT..Atlas:GetBossName("Sothos")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..Atlas:GetBossName("Jarien")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.."12) "..Atlas:GetBossName("Magistrate Barthilas", 454)..ALC["L-Parenthesis"]..ALC["Varies"]..ALC["R-Parenthesis"], 454 },
		{ WHIT.."13) "..Atlas:GetBossName("Aurius", 10917) },
		{ WHIT.."14) "..Atlas:GetBossName("Stonespine")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.."15) "..Atlas:GetBossName("Baroness Anastari", 451), 451 },
		{ WHIT..INDENT..Atlas:GetBossName("Black Guard Swordsmith")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 10003 },
		{ WHIT..INDENT..ALC["Blacksmithing Plans"] },
		{ WHIT.."16) "..Atlas:GetBossName("Nerub'enkan", 452), 452 },
		{ WHIT.."17) "..Atlas:GetBossName("Maleki the Pallid", 453), 453 },
		{ WHIT.."18) "..Atlas:GetBossName("Ramstein the Gorger", 455), 455 },
		{ WHIT.."19) "..Atlas:GetBossName("Baron Rivendare") },
		{ WHIT..INDENT..L["Ysida Harmon"] },
		{ GREN.." 1') "..L["Crusaders' Square Postbox"] },
		{ GREN.." 2') "..L["Market Row Postbox"] },
		{ GREN.." 3') "..L["Festival Lane Postbox"] },
		{ GREN.." 4') "..L["Elders' Square Postbox"] },
		{ GREN.." 5') "..L["King's Square Postbox"] },
		{ GREN.." 6') "..L["Fras Siabi's Postbox"] },
		{ GREN..L["3rd Box Opened: Postmaster Malown"] },
	},
	TheDeadminesEnt = {
		ZoneName = { BZ["The Deadmines"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Westfall"] },
		LevelRange = "15-25",
		MinLevel = "10",
		PlayerLimit = { 5 },
		WorldMapID = 291,
		JournalInstanceID = 63,
		Module = "Atlas_ClassicWoW",
		NextMap = "TheDeadmines",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ GREN..INDENT..ALC["Meeting Stone"] },
		{ BLUE.." B) "..BZ["The Deadmines"], 10002 },
		{ ORNG.." 1) "..Atlas:GetBossName("Marisa du'Paige")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Varies"]..ALC["R-Parenthesis"], 10003 },
		{ ORNG.." 2) "..Atlas:GetBossName("Brainwashed Noble")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10004 },
		{ ORNG.." 3) "..Atlas:GetBossName("Foreman Thistlenettle"), 10005 },
	},
	TheDeadmines = {
		ZoneName = { BZ["The Deadmines"] },
		Location = { BZ["Westfall"] },
		LevelRange = "15-25",
		MinLevel = "10",
		PlayerLimit = { 5 },
		WorldMapID = 291,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ BLUE.." B) "..ALC["Exit"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Rhahk'Zor") },
		{ WHIT.." 2) "..Atlas:GetBossName("Miner Johnson")..ALC["L-Parenthesis"]..ALC["(Rare)"]..ALC["R-Parenthesis"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Sneed") },
		{ WHIT..INDENT..L["Sneed's Shredder"] },
		{ WHIT.." 4) "..Atlas:GetBossName("Gilnid") },
		{ WHIT.." 5) "..Atlas:GetBossName("Defias Gunpowder") },
		{ WHIT.." 6) "..Atlas:GetBossName("Captain Greenskin") },
		{ WHIT..INDENT..L["Edwin VanCleef"] },
		{ WHIT..INDENT..L["Mr. Smite"] },
		{ WHIT..INDENT..L["Cookie"] },
	},
	TheStockade = {
		ZoneName = { BZ["The Stockade"] },
		Location = { BZ["Stormwind City"] },
		DungeonID = 12,
		LevelRange = "22-32",
		MinLevel = "15",
		PlayerLimit = { 5 },
		Acronym = L["Stocks"],
		WorldMapID = 225,
		JournalInstanceID = 238,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Targorr the Dread")..ALC["L-Parenthesis"]..ALC["Varies"]..ALC["R-Parenthesis"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Kam Deepfury") },
		{ WHIT.." 3) "..Atlas:GetBossName("Hamhock") },
		{ WHIT.." 4) "..Atlas:GetBossName("Bazil Thredd") },
		{ WHIT.." 5) "..Atlas:GetBossName("Dextren Ward") },
		{ WHIT.." 6) "..Atlas:GetBossName("Bruegal Ironknuckle")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
	},
	TheSunkenTempleEnt = {
		ZoneName = { BZ["Sunken Temple"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Swamp of Sorrows"] },
		DungeonID = 28,
		LevelRange = "52-55",
		MinLevel = "45",
		PlayerLimit = { 5 },
		Acronym = L["ST"],
		WorldMapID = 220,
		JournalInstanceID = 237,
		Module = "Atlas_ClassicWoW",
		NextMap = "TheSunkenTemple",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ GREN..INDENT..ALC["Meeting Stone"] },
		{ GREN..INDENT..L["Lord Itharius"] },
		{ BLUE.." B) "..BZ["Sunken Temple"], 10002 },
		{ WHIT.." 1) "..L["Priestess Udum'bra"], 10003 },
		{ WHIT.." 2) "..L["Gomora the Bloodletter"], 10004 },
		{ WHIT.." 3) "..Atlas:GetBossName("Jammal'an the Prophet", 458), 10005 , 458 },
	},
	TheSunkenTemple = {
		ZoneName = { BZ["Sunken Temple"] },
		Location = { BZ["Swamp of Sorrows"] },
		DungeonID = 28,
		LevelRange = "52-55",
		MinLevel = "45",
		PlayerLimit = { 5 },
		Acronym = L["ST"],
		WorldMapID = 220,
		JournalInstanceID = 237,
		Module = "Atlas_ClassicWoW",
		PrevMap = "TheSunkenTempleEnt",
		{ ORNG..ALC["AKA"]..ALC["Colon"]..BZ["The Temple of Atal'Hakkar"] },
		{ BLUE.." A) "..ALC["Entrance"] },
		{ BLUE.." B) "..ALC["Stairway"] },
		{ BLUE.." C) "..L["Troll Minibosses"]..ALC["L-Parenthesis"]..ALC["Upper"]..ALC["R-Parenthesis"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Altar of Hakkar") },
		{ WHIT..INDENT..L["Atal'alarion"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Dreamscythe") },
		{ WHIT..INDENT..L["Weaver"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Avatar of Hakkar", 457), 457 },
		{ WHIT.." 4) "..Atlas:GetBossName("Jammal'an the Prophet", 458), 458 },
		{ WHIT..INDENT..Atlas:GetBossName("Ogom the Wretched") },
		{ WHIT.." 5) "..Atlas:GetBossName("Morphaz", 459, 3)..ALC["L-Parenthesis"]..ALC["Wanders"]..ALC["R-Parenthesis"], 459 },
		{ WHIT..INDENT..Atlas:GetBossName("Hazzas", 459, 4)..ALC["L-Parenthesis"]..ALC["Wanders"]..ALC["R-Parenthesis"], 459 },
		{ WHIT.." 6) "..Atlas:GetBossName("Shade of Eranikus", 463), 463 },
		{ WHIT..INDENT..L["Essence Font"] },
		{ WHIT.." 7) "..Atlas:GetBossName("Spawn of Hakkar")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 8) "..L["Elder Starsong"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"], 10003 },
		{ GREN.."1'-6') "..L["Statue Activation Order"] },
	},
	UldamanEnt = {
		ZoneName = { BZ["Uldaman"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Badlands"] },
		DungeonID = 22,
		LevelRange = "42-52",
		MinLevel = "30",
		PlayerLimit = { 5 },
		Acronym = L["Ulda"],
		WorldMapID = 230,
		JournalInstanceID = 239,
		Module = "Atlas_ClassicWoW",
		NextMap = "Uldaman",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Uldaman"], 10002 },
	},
	Uldaman = {
		ZoneName = { BZ["Uldaman"] },
		Location = { BZ["Badlands"] },
		DungeonID = 22,
		LevelRange = "42-52",
		MinLevel = "30",
		PlayerLimit = { 5 },
		Acronym = L["Ulda"],
		WorldMapID = 230,
		JournalInstanceID = 239,
		Module = "Atlas_ClassicWoW",
		PrevMap = "UldamanEnt",
		{ BLUE.." A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Front"]..ALC["R-Parenthesis"], 10001 },
		{ BLUE.." B) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Back"]..ALC["R-Parenthesis"], 10002 },
		{ WHIT.." 1) "..Atlas:GetBossName("Baelog", 468, 1), 468 },
		{ WHIT..INDENT..Atlas:GetBossName("Eric \"The Swift\"", 468, 2), 468 },
		{ WHIT..INDENT..Atlas:GetBossName("Olaf", 468, 3), 468 },
		{ WHIT..INDENT..L["Baelog's Chest"] },
		{ WHIT..INDENT..L["Conspicuous Urn"] },
		{ WHIT.." 2) "..L["Remains of a Paladin"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Revelosh", 467), 467 },
		{ WHIT.." 4) "..Atlas:GetBossName("Ironaya", 469), 469 },
		{ WHIT.." 5) "..Atlas:GetBossName("Obsidian Sentinel", 748), 748 },
		{ WHIT.." 6) "..Atlas:GetBossName("Annora (Master Enchanter)") },
		{ WHIT.." 7) "..Atlas:GetBossName("Ancient Stone Keeper", 470), 470 },
		{ WHIT.." 8) "..Atlas:GetBossName("Galgann Firehammer", 471), 471 },
		{ WHIT..INDENT..L["Tablet of Will"] },
		{ WHIT..INDENT..L["Shadowforge Cache"] },
		{ WHIT.." 9) "..Atlas:GetBossName("Grimlok", 472), 472 },
		{ WHIT.."10) "..Atlas:GetBossName("Archaedas", 473), 473 },
		{ WHIT.."11) "..L["The Discs of Norgannon"] },
		{ WHIT..INDENT..L["Ancient Treasure"] },

	},
--************************************************
-- Kalimdor Instances (Classic)
--************************************************
	BlackfathomDeepsEnt = {
		ZoneName = { BZ["Blackfathom Deeps"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Ashenvale"] },
		LevelRange = "22-32",
		MinLevel = "15",
		PlayerLimit = { 5 },
		Acronym = L["BFD"],
		WorldMapID = 221,
		JournalInstanceID = 227,
		Module = "Atlas_ClassicWoW",
		NextMap = "BlackfathomDeeps",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Blackfathom Deeps"], 10002 },
	},
	BlackfathomDeeps = {
		ZoneName = { BZ["Blackfathom Deeps"] },
		Location = { BZ["Ashenvale"] },
		DungeonID = 10,
		LevelRange = "22-32",
		MinLevel = "15",
		PlayerLimit = { 5 },
		Acronym = L["BFD"],
		WorldMapID = 221,
		JournalInstanceID = 227,
		Module = "Atlas_ClassicWoW",
		PrevMap = "BlackfathomDeepsEnt",
		{ BLUE.." A) "..ALC["Entrance"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Ghamoo-ra") },
		{ WHIT.." 2) "..L["Lorgalis Manuscript"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Lady Sarevess") },
		{ WHIT.." 4) "..L["Argent Guard Thaelrid"] },
		{ WHIT.." 5) "..Atlas:GetBossName("Gelihast") },
		{ WHIT.." 6) "..Atlas:GetBossName("Lorgus Jett")..ALC["L-Parenthesis"]..ALC["Varies"]..ALC["R-Parenthesis"] },
		{ WHIT.." 7) "..Atlas:GetBossName("Baron Aquanis")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT..INDENT..L["Fathom Core"] },
		{ WHIT.." 8) "..Atlas:GetBossName("Twilight Lord Kelris") },
		{ WHIT.." 9) "..Atlas:GetBossName("Old Serra'kis") },
		{ WHIT.."10) "..Atlas:GetBossName("Aku'mai") },
	},
	DireMaulEnt = {
		ZoneName = { BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Feralas"] },
		LevelRange = "44-54",
		PlayerLimit = { 5 },
		Acronym = L["DM"],
		WorldMapID = 235,
		JournalInstanceID = 230,
		Module = "Atlas_ClassicWoW",
		NextMap = "DireMaulEast",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["East"]..ALC["R-Parenthesis"], 10002 },
		{ BLUE.." C) "..BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["North"]..ALC["R-Parenthesis"], 10003 },
		{ BLUE.." D) "..BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["West"]..ALC["R-Parenthesis"], 10004 },
		{ GREN.." 1') "..L["Dire Pool"], 10005 },
		{ GREN.." 2') "..L["Dire Maul Arena"], 10006 },
		{ GREN..INDENT..L["Elder Mistwalker"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"] },
	},
	DireMaulEast = {
		ZoneName = { BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["East"]..ALC["R-Parenthesis"] },
		Location = { BZ["Feralas"] },
		DungeonID = 34,
		LevelRange = "44-54",
		PlayerLimit = { 5 },
		Acronym = L["DM"],
		WorldMapID = 239,
		DungeonLevel = 6,
		JournalInstanceID = 230,
		Module = "Atlas_ClassicWoW",
		PrevMap = "DireMaulEnt",
		NextMap = "DireMaulNorth",
		{ BLUE.." A-C) "..ALC["Entrance"] },
		{ BLUE.." D) "..ALC["Exit"] },
		{ WHIT.." 1) "..Atlas:GetBossName("Pusillin")..ALC["L-Parenthesis"]..L["Chase Begins"]..ALC["R-Parenthesis"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Pusillin")..ALC["L-Parenthesis"]..L["Chase Ends"]..ALC["R-Parenthesis"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Zevrim Thornhoof", 402)..ALC["L-Parenthesis"]..ALC["Upper"]..ALC["R-Parenthesis"], 402 },
		{ WHIT..INDENT..Atlas:GetBossName("Hydrospawn", 403), 403 },
		{ WHIT..INDENT..Atlas:GetBossName("Lethtendris", 404), 404 },
		{ WHIT..INDENT..Atlas:GetBossName("Pimgib") },
		{ WHIT.." 4) "..L["Old Ironbark"]..ALC["Slash"]..L["Ironbark the Redeemed"] },
		{ WHIT.." 5) "..Atlas:GetBossName("Alzzin the Wildshaper", 405), 405 },
		{ WHIT..INDENT..Atlas:GetBossName("Isalien")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
	},
	DireMaulNorth = {
		ZoneName = { BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["North"]..ALC["R-Parenthesis"] },
		Location = { BZ["Feralas"] },
		DungeonID = 36,
		LevelRange = "44-54",
		PlayerLimit = { 5 },
		Acronym = L["DM"],
		WorldMapID = 234,
		DungeonLevel = 1,
		JournalInstanceID = 230,
		Module = "Atlas_ClassicWoW",
		PrevMap = "DireMaulEast",
		NextMap = "DireMaulWest",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Guard Mol'dar", 411), 411 },
		{ WHIT.." 2) "..Atlas:GetBossName("Stomper Kreeg", 412), 412 },
		{ WHIT.." 3) "..Atlas:GetBossName("Guard Fengus", 413), 413 },
		{ WHIT.." 4) "..L["Knot Thimblejack"] },
		{ WHIT..INDENT..Atlas:GetBossName("Guard Slip'kik", 414), 414 },
		{ WHIT.." 5) "..Atlas:GetBossName("Captain Kromcrush", 415), 415 },
		{ WHIT.." 6) "..Atlas:GetBossName("King Gordok", 417), 417 },
		{ WHIT..INDENT..Atlas:GetBossName("Cho'Rush the Observer", 416), 416 },
	},
	DireMaulWest = {
		ZoneName = { BZ["Dire Maul"]..ALC["L-Parenthesis"]..ALC["West"]..ALC["R-Parenthesis"] },
		Location = { BZ["Feralas"] },
		DungeonID = 38,
		LevelRange = "44-54",
		PlayerLimit = { 5 },
		Acronym = L["DM"],
		WorldMapID = 237,
		DungeonLevel = 4,
		JournalInstanceID = 230,
		Module = "Atlas_ClassicWoW",
		PrevMap = "DireMaulNorth",
		{ ORNG..ALC["Key"]..ALC["Colon"]..ALIL["J'eevee's Jar"]..ALC["L-Parenthesis"]..Atlas:GetBossName("Lord Hel'nurath")..ALC["R-Parenthesis"] },
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..L["Pylons"], 10002 },
		{ WHIT.." 1) "..L["Shen'dralar Ancient"], 10006 },
		{ WHIT.." 2) "..Atlas:GetBossName("Tendris Warpwood", 406), 406 },
		{ WHIT..INDENT..L["Ancient Equine Spirit"], 10005 },
		{ WHIT.." 3) "..Atlas:GetBossName("Illyanna Ravenoak", 407), 407 },
		{ WHIT..INDENT..L["Ferra"] },
		{ WHIT.." 4) "..Atlas:GetBossName("Magister Kalendris", 408), 408 },
		{ WHIT.." 5) "..Atlas:GetBossName("Tsu'zee")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10008 },
		{ WHIT.." 6) "..Atlas:GetBossName("Immol'thar", 409), 409 },
		{ WHIT..INDENT..Atlas:GetBossName("Lord Hel'nurath")..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"] },
		{ WHIT.." 7) "..Atlas:GetBossName("Prince Tortheldrin", 410), 410 },
		{ GREN.." 1') "..ALC["Library"] },
		{ GREN..INDENT..L["Falrin Treeshaper"] },
		{ GREN..INDENT..L["Lorekeeper Lydros"] },
		{ GREN..INDENT..L["Lorekeeper Javon"] },
		{ GREN..INDENT..L["Lorekeeper Kildrath"] },
		{ GREN..INDENT..L["Lorekeeper Mykos"] },
		{ GREN..INDENT..L["Shen'dralar Provisioner"] },
		{ GREN..INDENT..L["Skeletal Remains of Kariel Winthalus"] },
	},
	MaraudonEnt = {
		ZoneName = { BZ["Maraudon"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Desolace"] },
		LevelRange = "36-46",
		MinLevel = "25",
		PlayerLimit = { 5 },
		Acronym = L["Mara"],
		WorldMapID = 280,
		JournalInstanceID = 232,
		Module = "Atlas_ClassicWoW",
		NextMap = "Maraudon",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT..INDENT..L["The Nameless Prophet"]..ALC["L-Parenthesis"]..ALC["Lower"]..ALC["R-Parenthesis"] },
		{ BLUE.." B) "..BZ["Maraudon"]..ALC["L-Parenthesis"]..ALC["Purple"]..ALC["R-Parenthesis"], 10002 },
		{ BLUE.." C) "..BZ["Maraudon"]..ALC["L-Parenthesis"]..ALC["Orange"]..ALC["R-Parenthesis"], 10003 },
		{ BLUE.." D) "..BZ["Maraudon"]..ALC["L-Parenthesis"]..ALC["Portal"]..ALC["Comma"]..ALC["Lower"]..ALC["R-Parenthesis"], 10004 },
	},
	Maraudon = {
		ZoneName = { BZ["Maraudon"] },
		Location = { BZ["Desolace"] },
		LevelRange = "36-46",
		MinLevel = "25",
		PlayerLimit = { 5 },
		Acronym = L["Mara"],
		WorldMapID = 280,
		JournalInstanceID = 232,
		Module = "Atlas_ClassicWoW",
		PrevMap = "MaraudonEnt",
		{ BLUE.." A) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Orange"]..ALC["R-Parenthesis"], 10001 },
		{ BLUE.." B) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Purple"]..ALC["R-Parenthesis"], 10002 },
		{ BLUE.." C) "..ALC["Entrance"]..ALC["L-Parenthesis"]..ALC["Portal"]..ALC["R-Parenthesis"], 10003 },
		{ WHIT.." 1) "..L["Veng (The Fifth Khan)"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Noxxion", 423), 423 },
		{ WHIT.." 3) "..Atlas:GetBossName("Razorlash", 424), 424 },
		{ WHIT.." 4) "..L["Maraudos (The Fourth Khan)"] },
		{ WHIT.." 5) "..Atlas:GetBossName("Lord Vyletongue", 427), 427 },
		{ WHIT.." 6) "..Atlas:GetBossName("Meshlok the Harvester")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Wanders"]..ALC["R-Parenthesis"], 10004 },
		{ WHIT.." 7) "..Atlas:GetBossName("Celebras the Cursed", 428), 428 },
		{ WHIT.." 8) "..Atlas:GetBossName("Landslide", 429), 429 },
		{ WHIT.." 9) "..Atlas:GetBossName("Tinkerer Gizlock", 425), 425 },
		{ WHIT.."10) "..Atlas:GetBossName("Rotgrip", 430), 430 },
		{ WHIT.."11) "..Atlas:GetBossName("Princess Theradras", 431), 431 },
		{ WHIT.."12) "..L["Elder Splitrock"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"], 10005 },
	},
	RagefireChasm = {
		ZoneName = { BZ["Ragefire Chasm"] },
		Location = { BZ["Orgrimmar"] },
		DungeonID = 4,
		LevelRange = "15-25",
		MinLevel = "10",
		PlayerLimit = { 5 },
		Acronym = L["RFC"],
		WorldMapID = 213,
		JournalInstanceID = 226,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Maur Grimtotem") },
		{ WHIT.." 2) "..Atlas:GetBossName("Taragaman the Hungerer") },
		{ WHIT.." 3) "..Atlas:GetBossName("Jergosh the Invoker") },
		{ WHIT.." 4) "..Atlas:GetBossName("Bazzalan") },
	},
	RazorfenDowns = {
		ZoneName = { BZ["Razorfen Downs"] },
		Location = { BZ["Thousand Needles"] },
		DungeonID = 20,
		LevelRange = "37-47",
		MinLevel = "35",
		PlayerLimit = { 5 },
		Acronym = L["RFD"],
		WorldMapID = 300,
		JournalInstanceID = 233,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Tuten'kash") },
		{ WHIT.." 2) "..Atlas:GetBossName("Henry Stern") },
		{ WHIT..INDENT..L["Belnistrasz"] },
		{ WHIT.." 3) "..Atlas:GetBossName("Mordresh Fire Eye") },
		{ WHIT.." 4) "..Atlas:GetBossName("Glutton") },
		{ WHIT.." 5) "..Atlas:GetBossName("Ragglesnout")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Varies"]..ALC["R-Parenthesis"] },
		{ WHIT.." 6) "..Atlas:GetBossName("Amnennar the Coldbringer") },
		{ WHIT.." 7) "..Atlas:GetBossName("Plaguemaw the Rotting") },
	},
	RazorfenKraul = {
		ZoneName = { BZ["Razorfen Kraul"] },
		Location = { BZ["Southern Barrens"] },
		DungeonID = 16,
		LevelRange = "32-42",
		MinLevel = "25",
		PlayerLimit = { 5 },
		Acronym = L["RFK"],
		WorldMapID = 301,
		JournalInstanceID = 234,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Roogug") },
		{ WHIT.." 2) "..Atlas:GetBossName("Aggem Thorncurse") },
		{ WHIT.." 3) "..Atlas:GetBossName("Death Speaker Jargba") },
		{ WHIT.." 4) "..Atlas:GetBossName("Overlord Ramtusk") },
		{ WHIT.." 5) "..Atlas:GetBossName("Agathelos the Raging") },
		{ WHIT.." 6) "..Atlas:GetBossName("Blind Hunter")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
		{ WHIT.." 7) "..Atlas:GetBossName("Charlga Razorflank") },
		{ WHIT.." 8) "..L["Willix the Importer"] },
		{ WHIT..INDENT..L["Heralath Fallowbrook"] },
		{ WHIT.." 9) "..Atlas:GetBossName("Earthcaller Halmgar")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
	},
	WailingCavernsEnt = {
		ZoneName = { BZ["Wailing Caverns"]..ALC["L-Parenthesis"]..ALC["Entrance"]..ALC["R-Parenthesis"] },
		Location = { BZ["Northern Barrens"] },
		DungeonID = 1,
		LevelRange = "17-27",
		MinLevel = "10",
		PlayerLimit = { 5 },
		Acronym = L["WC"],
		WorldMapID = 279,
		JournalInstanceID = 240,
		Module = "Atlas_ClassicWoW",
		NextMap = "WailingCaverns",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Wailing Caverns"], 10002 },
		{ ORNG.." 1) "..Atlas:GetBossName("Trigore the Lasher")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10003 },
--		{ ORNG..INDENT..Atlas:GetBossName("Boahn")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"] },
	},
	WailingCaverns = {
		ZoneName = { BZ["Wailing Caverns"] },
		Location = { BZ["Northern Barrens"] },
		DungeonID = 1,
		LevelRange = "17-27",
		MinLevel = "10",
		PlayerLimit = { 5 },
		Acronym = L["WC"],
		WorldMapID = 279,
		DungeonLevel = 1,
		JournalInstanceID = 240,
		Module = "Atlas_ClassicWoW",
		PrevMap = "WailingCavernsEnt",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..L["Disciple of Naralex"] },
		{ WHIT.." 2) "..Atlas:GetBossName("Lord Cobrahn", 475), 475 },
		{ WHIT.." 3) "..Atlas:GetBossName("Lady Anacondra", 474), 474 },
		{ WHIT.." 4) "..Atlas:GetBossName("Kresh", 477)..ALC["L-Parenthesis"]..ALC["Varies"]..ALC["R-Parenthesis"], 477 },
		{ WHIT.." 5) "..Atlas:GetBossName("Lord Pythas", 476), 476 },
		{ WHIT.." 6) "..Atlas:GetBossName("Skum", 478), 478 },
		{ WHIT.." 7) "..Atlas:GetBossName("Lord Serpentis", 479)..ALC["L-Parenthesis"]..ALC["Upper"]..ALC["R-Parenthesis"], 479 },
		{ WHIT.." 8) "..Atlas:GetBossName("Verdan the Everliving", 480)..ALC["L-Parenthesis"]..ALC["Upper"]..ALC["R-Parenthesis"], 480 },
		{ WHIT.." 9) "..Atlas:GetBossName("Mutanus the Devourer", 481), 481 },
		{ WHIT..INDENT..L["Naralex"] },
		{ WHIT.."10) "..Atlas:GetBossName("Deviate Faerie Dragon")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Varies"]..ALC["R-Parenthesis"], 10002 },
	},
	ZulFarrak = {
		ZoneName = { BZ["Zul'Farrak"] },
		Location = { BZ["Tanaris"] },
		DungeonID = 24,
		LevelRange = "46-56",
		MinLevel = "39",
		PlayerLimit = { 5 },
		Acronym = L["ZF"],
		WorldMapID = 219,
		JournalInstanceID = 241,
		Module = "Atlas_ClassicWoW",
		{ BLUE.." A) "..ALC["Entrance"], 10001 },
		{ WHIT.." 1) "..Atlas:GetBossName("Antu'sul", 484), 484 },
		{ WHIT.." 2) "..Atlas:GetBossName("Theka the Martyr", 485), 485 },
		{ WHIT.." 3) "..Atlas:GetBossName("Witch Doctor Zum'rah", 486), 486 },
		{ WHIT..INDENT..L["Zul'Farrak Dead Hero"] },
		{ WHIT.." 4) "..Atlas:GetBossName("Nekrum Gutchewer") },
		{ WHIT..INDENT..Atlas:GetBossName("Shadowpriest Sezz'ziz") },
		{ WHIT..INDENT..Atlas:GetBossName("Dustwraith")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Varies"]..ALC["R-Parenthesis"], 10003 },
		{ WHIT.." 5) "..Atlas:GetBossName("Sergeant Bly") },
		{ WHIT..INDENT..L["Weegli Blastfuse"] },
		{ WHIT..INDENT..Atlas:GetBossName("Murta Grimgut") },
		{ WHIT..INDENT..L["Raven"] },
		{ WHIT..INDENT..Atlas:GetBossName("Oro Eyegouge") },
		{ WHIT..INDENT..Atlas:GetBossName("Sandfury Executioner") },
		{ WHIT.." 6) "..Atlas:GetBossName("Hydromancer Velratha", 482), 482 },
		{ WHIT..INDENT..Atlas:GetBossName("Gahz'rilla", 483)..ALC["L-Parenthesis"]..ALC["Summon"]..ALC["R-Parenthesis"], 483 },
		{ WHIT..INDENT..L["Elder Wildmane"]..ALC["L-Parenthesis"]..ALC["Lunar Festival"]..ALC["R-Parenthesis"], 10005 },
		{ WHIT.." 7) "..Atlas:GetBossName("Chief Ukorz Sandscalp", 489), 489 },
		{ WHIT..INDENT..Atlas:GetBossName("Ruuzlu") },
		{ WHIT.." 8) "..Atlas:GetBossName("Zerillis")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["Comma"]..ALC["Wanders"]..ALC["R-Parenthesis"], 10004 },
		{ WHIT.." 9) "..Atlas:GetBossName("Sandarr Dunereaver")..ALC["L-Parenthesis"]..ALC["Rare"]..ALC["R-Parenthesis"], 10002 },
	},
}


-- Atlas Map NPC Description Data
db.AtlasMaps_NPC_DB = {
--************************************************
-- Eastern Kingdoms Instances (Classic)
--************************************************
--************************************************
-- Kalimdor Instances (Classic)
--************************************************
}

--[[
	AssocDefaults{}

	Default map to be auto-selected when no SubZone data is available.

	For example, "Dire Maul" has a subzone called "Warpwood Quarter" located in East Dirl Maul, however, there are also 
	some areas which have not been named with any subzone, and we would like to pick a proper default map in this condition.

	Define this table entries only when the instance has multiple maps.

	Table index is zone name, it need to be localized value, but we will handle the localization with BabbleSubZone library.
	The table value is map's key-name.
]]
db.AssocDefaults = {
	[BZ["Blackrock Mountain"]] =		"BlackrockMountainEnt",
	[BZ["Blackrock Spire"]] =		"BlackrockSpireLower",
	[BZ["Hall of Blackhand"]] =		"BlackrockSpireLower",
	[BZ["Dire Maul"]] =			"DireMaulNorth",
	[BZ["The Deadmines"]] = 		"TheDeadmines",
	[BZ["The Wailing Caverns"]] = 		"WailingCavernsEnt",
	[BZ["Sunken Temple"]] = 		"TheSunkenTemple",
}

--[[
	SubZoneData{}

	Define SubZone data for default map to be selected for instance which has multiple maps.
	Subzone data should be able to be pulled out from WMOAreaTable for indoor areas, or from AreaTable for outdoor areas.

	Array Syntax: 
	["localized zone name"] = {
		["atlas map name"] = {
			["localized subzone name 1"],
			["localized subzone name 2"],
		},
	},
]]
db.SubZoneData = {
	-- Blackrock Spire
	[BZ["Hall of Blackhand"]] = {
		-- Lower Blackrock Spire
		["BlackrockSpireLower"] = {
			BZ["Hordemar City"],
			BZ["Mok'Doom"],
			BZ["Tazz'Alor"],
			BZ["Skitterweb Tunnels"],
			BZ["The Storehouse"],
			BZ["Halycon's Lair"],
			BZ["Chamber of Battle"],
		},
	},
	-- Dire Maul
	[BZ["Dire Maul"]] = {
		-- Dire Maul, Entrance
		["DireMaulEnt"] = {
			BZ["Broken Commons"],
			-- Comment out below as they are currently redundant due to the Zone is Feralas
			--BZ["Eldreth Row"],
			--BZ["The Maul"],
		},
		-- Dire Maul, North
		["DireMaulNorth"] = {
			BZ["Halls of Destruction"],
			BZ["Gordok's Seat"],
		},
		-- Dire Maul, East
		["DireMaulEast"] = {
			BZ["Warpwood Quarter"],
			BZ["The Hidden Reach"],
			BZ["The Conservatory"],
			BZ["The Shrine of Eldretharr"],
		},
		-- Dire Maul, West
		["DireMaulWest"] = {
			BZ["Capital Gardens"],
			BZ["Court of the Highborne"],
			BZ["Prison of Immol'thar"],
			BZ["The Athenaeum"],
		},
	},
	-- Stratholme
	[BZ["Stratholme"]] = {
		-- Stratholme
		["Stratholme"] = {
			BZ["King's Square"],
			BZ["Festival Lane"],
			BZ["Market Row"],
			BZ["Crusaders' Square"],
			BZ["The Scarlet Bastion"],
			BZ["The Hall of Lights"],
			BZ["The Hoard"],
			BZ["The Crimson Throne"],
			BZ["Elders' Square"],
			BZ["The Gauntlet"],
			BZ["Slaughter Square"],
			BZ["The Slaughter House"],
		},
	},
	-- The Deadmines
	[BZ["The Deadmines"]] = {
		["TheDeadmines"] = {
			BZ["Goblin Foundry"],
			BZ["Mast Room"],
			BZ["Ironclad Cove"],
		},
	},
	-- The Stockade
	[BZ["The Stockade"]] = {
		-- The Stockade
		["TheStockade"] = {
			BZ["Stormwind Stockade"],
		},
	},
	-- Wailing Caverns
	[BZ["Wailing Caverns"]] = {
		-- Wailing Caverns, Entrance
		["WailingCavernsEnt"] = {
			BZ["Cavern of Mists"],
		},
		-- Wailing Caverns
		["WailingCaverns"] = {
			BZ["Screaming Gully"],
			BZ["Dreamer's Rock"],
			BZ["Pit of Fangs"],
			BZ["Crag of the Everliving"],
			BZ["Pit of Fangs"],
		},
	},
}

--[[
	OutdoorZoneToAtlas{}

	Maps to auto-select to from outdoor zones.

	Table index is sub-zone name, it need to be localized value, but we will handle
	the localization with BabbleSubZone library.
	The table value is map's key-name.

	Duplicates are commented out.
	Not for localization.
]]
db.OutdoorZoneToAtlas = {
	[BZ["Burning Steppes"]] = 		"BlackrockMountainEnt",	-- Classic WoW, Catalysm, Draenor
	[BZ["Searing Gorge"]] = 		"BlackrockMountainEnt",	-- Classic WoW, Catalysm, Draenor
	[BZ["Ashenvale"]] = 			"BlackfathomDeepsEnt",
	[BZ["Feralas"]] = 			"DireMaulEnt",
	[BZ["Dun Morogh"]] = 			"GnomereganEnt",
	[BZ["Desolace"]] = 			"MaraudonEnt",
	[BZ["Orgrimmar"]] = 			"RagefireChasm",
	[BZ["Thousand Needles"]] = 		"RazorfenDowns",
	[BZ["Southern Barrens"]] = 		"RazorfenKraul",
	[BZ["Silverpine Forest"]] = 		"ShadowfangKeep",	-- also in Catalysm
	[BZ["Tirisfal Glades"]] = 		"ScarletMonasteryEnt",	-- also in MoP
	[BZ["Western Plaguelands"]] = 		"Scholomance",		-- also in MoP
	[BZ["Eastern Plaguelands"]] = 		"Stratholme",
	[BZ["Westfall"]] = 			"TheDeadminesEnt",
	[BZ["Stormwind City"]] = 		"TheStockade",
	[BZ["Swamp of Sorrows"]] = 		"TheSunkenTempleEnt",
	[BZ["Badlands"]] = 			"UldamanEnt",
	[BZ["Northern Barrens"]] = 		"WailingCavernsEnt",
	[BZ["Tanaris"]] = 			"ZulFarrak",
}

-- Yes, the following two tables are redundant, but they're both here in case there's ever more than one entrance map for an instance
-- Entrance maps to instance maps
db.EntToInstMatches = {
	["BlackfathomDeepsEnt"] =		{"BlackfathomDeeps"},
	["BlackrockMountainEnt"] =		{"BlackrockDepths","BlackwingLair","BlackrockSpireLower","BlackrockSpireUpper","MoltenCore"},
	["DireMaulEnt"] =			{"DireMaulEast","DireMaulNorth","DireMaulWest"},
	["GnomereganEnt"] =			{"Gnomeregan"},
	["MaraudonEnt"] =			{"Maraudon"},
	["ScarletMonasteryEnt"] = 		{"SMArmory", "SMCathedral", "SMGraveyard", "SMLibrary"},
	["TheDeadminesEnt"] =			{"TheDeadmines"},
	["TheSunkenTempleEnt"] =		{"TheSunkenTemple"},
	["UldamanEnt"] =			{"Uldaman"},
	["WailingCavernsEnt"] =			{"WailingCaverns"},
}

-- Instance maps to entrance maps
db.InstToEntMatches = {
	["BlackfathomDeeps"] =			{"BlackfathomDeepsEnt"},
	["BlackrockDepths"] =			{"BlackrockMountainEnt"},
	["BlackwingLair"] =			{"BlackrockMountainEnt"},
	["BlackrockSpireLower"] =		{"BlackrockMountainEnt"},
	["BlackrockSpireUpper"] =		{"BlackrockMountainEnt"},
	["MoltenCore"] =			{"BlackrockMountainEnt"},
	["DireMaulEast"] =			{"DireMaulEnt"},
	["DireMaulNorth"] =			{"DireMaulEnt"},
	["DireMaulWest"] =			{"DireMaulEnt"},
	["Gnomeregan"] =			{"GnomereganEnt"},
	["SMArmory"] =				{"ScarletMonasteryEnt"},
	["SMCathedral"] =			{"ScarletMonasteryEnt"},
	["SMGraveyard"] =			{"ScarletMonasteryEnt"},
	["SMLibrary"] =				{"ScarletMonasteryEnt"},
	["TheDeadmines"] =			{"TheDeadminesEnt"},
	["TheSunkenTemple"] =			{"TheSunkenTempleEnt"},
	["Uldaman"] =				{"UldamanEnt"},
	["WailingCaverns"] =			{"WailingCavernsEnt"},
}

-- Links maps together that are part of the same instance
db.SubZoneAssoc = {
	["DireMaulNorth"] =			BZ["Dire Maul"],
	["DireMaulEast"] =			BZ["Dire Maul"],
	["DireMaulWest"] =			BZ["Dire Maul"],
	["DireMaulEnt"] =			BZ["Dire Maul"],
}

db.DropDownLayouts_Order = {
	[ATLAS_DDL_CONTINENT] = {
		ATLAS_DDL_CONTINENT_EASTERN,
		ATLAS_DDL_CONTINENT_KALIMDOR,
	},
	[ATLAS_DDL_LEVEL] = {
		ATLAS_DDL_LEVEL_UNDER45,
		ATLAS_DDL_LEVEL_45TO60,
		ATLAS_DDL_LEVEL_60TO70,
	},
	[ATLAS_DDL_EXPANSION] = {
		ATLAS_DDL_EXPANSION_OLD,
	},
}

db.DropDownLayouts = {
	[ATLAS_DDL_CONTINENT] = {
		[ATLAS_DDL_CONTINENT_EASTERN] = {
			"BlackrockMountainEnt",		-- Classic WoW, Catalysm, Draenor
			"BlackrockDepths",		-- Classic WoW
			"BlackwingLair",		-- Classic WoW
			"TheDeadmines",			-- Classic WoW, Catalysm
			"TheDeadminesEnt",		-- Classic WoW, Catalysm
			"Gnomeregan",			-- Classic WoW
			"GnomereganEnt",		-- Classic WoW
			"BlackrockSpireLower",		-- Classic WoW
			"BlackrockSpireUpper",		-- Classic WoW
			"MoltenCore",			-- Classic WoW
			"ShadowfangKeep",		-- Classic WoW, Catalysm
			"Stratholme",			-- Classic WoW
			"TheStockade",			-- Classic WoW
			"TheSunkenTemple",		-- Classic WoW
			"TheSunkenTempleEnt",		-- Classic WoW
			"Uldaman",			-- Classic WoW
			"UldamanEnt",			-- Classic WoW
			"Scholomance",			-- Classic WoW
			"ScarletMonasteryEnt",		-- Classic WoW
			"SMArmory",			-- Classic WoW
			"SMCathedral",			-- Classic WoW
			"SMGraveyard",			-- Classic WoW
			"SMLibrary",			-- Classic WoW
		},
		[ATLAS_DDL_CONTINENT_KALIMDOR] = {
			"BlackfathomDeeps",		-- Classic WoW
			"BlackfathomDeepsEnt",		-- Classic WoW
			"DireMaulEast",			-- Classic WoW
			"DireMaulEnt",			-- Classic WoW
			"DireMaulNorth",		-- Classic WoW
			"DireMaulWest",			-- Classic WoW
			"Maraudon",			-- Classic WoW
			"MaraudonEnt",			-- Classic WoW
			"RagefireChasm",		-- Classic WoW
			"RazorfenDowns",		-- Classic WoW
			"RazorfenKraul",		-- Classic WoW
			"WailingCaverns",		-- Classic WoW
			"WailingCavernsEnt",		-- Classic WoW
			"ZulFarrak",			-- Classic WoW
		},
	},
	[ATLAS_DDL_EXPANSION] = {
		[ATLAS_DDL_EXPANSION_OLD] = {
			"BlackfathomDeeps",
			"BlackfathomDeepsEnt",
			"BlackrockMountainEnt",
			"BlackrockDepths",
			"BlackwingLair",
			"DireMaulEast",
			"DireMaulEnt",
			"DireMaulNorth",
			"DireMaulWest",
			"Gnomeregan",
			"GnomereganEnt",
			"BlackrockSpireLower",		-- Classic WoW
			"BlackrockSpireUpper",		-- Classic WoW
			"Maraudon",
			"MaraudonEnt",
			"MoltenCore",
			"TheDeadmines",			-- Classic WoW, Catalysm
			"TheDeadminesEnt",
			"RagefireChasm",
			"RazorfenDowns",
			"RazorfenKraul",
			"Scholomance",
			"ShadowfangKeep",
			"ScarletMonasteryEnt",
			"SMArmory",			-- Classic WoW
			"SMCathedral",			-- Classic WoW
			"SMGraveyard",			-- Classic WoW
			"SMLibrary",			-- Classic WoW
			"Stratholme",			-- Classic WoW
			"TheStockade",
			"TheSunkenTemple",
			"TheSunkenTempleEnt",
			"Uldaman",
			"UldamanEnt",
			"WailingCaverns",
			"WailingCavernsEnt",
			"ZulFarrak",
		},
	},
	[ATLAS_DDL_LEVEL] = {
		[ATLAS_DDL_LEVEL_UNDER45] = {
			"BlackfathomDeeps",		-- Classic WoW
			"BlackfathomDeepsEnt",		-- Classic WoW
			"Gnomeregan",			-- Classic WoW
			"GnomereganEnt",		-- Classic WoW
			"RagefireChasm",		-- Classic WoW
			"RazorfenDowns",		-- Classic WoW
			"RazorfenKraul",		-- Classic WoW
			"ShadowfangKeep",		-- Classic WoW
			"ScarletMonasteryEnt",		-- Classic WoW
			"SMArmory",			-- Classic WoW
			"SMCathedral",			-- Classic WoW
			"SMGraveyard",			-- Classic WoW
			"SMLibrary",			-- Classic WoW
			"Scholomance",			-- Classic WoW
			"TheDeadmines",			-- Classic WoW, Catalysm
			"TheDeadminesEnt",		-- Classic WoW
			"TheStockade",			-- Classic WoW
			"Uldaman",			-- Classic WoW
			"UldamanEnt",			-- Classic WoW
			"WailingCaverns",		-- Classic WoW
			"WailingCavernsEnt",		-- Classic WoW
		},
		[ATLAS_DDL_LEVEL_45TO60] = {
			"BlackrockMountainEnt",		-- Classic WoW
			"BlackrockDepths",		-- Classic WoW
			"DireMaulEast",			-- Classic WoW
			"DireMaulEnt",			-- Classic WoW
			"DireMaulNorth",		-- Classic WoW
			"DireMaulWest",			-- Classic WoW
			"BlackrockSpireLower",		-- Classic WoW
			"BlackrockSpireUpper",		-- Classic WoW
			"Maraudon",			-- Classic WoW
			"MaraudonEnt",			-- Classic WoW
			"Stratholme",			-- Classic WoW
			"TheSunkenTemple",		-- Classic WoW
			"TheSunkenTempleEnt",		-- Classic WoW
			"ZulFarrak",			-- Classic WoW
		},
		[ATLAS_DDL_LEVEL_60TO70] = {
			"BlackrockMountainEnt",		-- Classic WoW
			"BlackwingLair",		-- Classic WoW
			"MoltenCore",			-- Classic WoW
		},
	},
	[ATLAS_DDL_PARTYSIZE] = {
		[ATLAS_DDL_PARTYSIZE_5] = {
			"BlackrockMountainEnt",		-- Classic WoW
			"BlackfathomDeeps",		-- Classic WoW
			"BlackfathomDeepsEnt",		-- Classic WoW
			"BlackrockDepths",		-- Classic WoW
			"BlackrockSpireLower",		-- Classic WoW
			"BlackrockSpireUpper",		-- Classic WoW
			"TheDeadmines",			-- Classic WoW
			"TheDeadminesEnt",		-- Classic WoW
			"DireMaulEast",			-- Classic WoW
			"DireMaulEnt",			-- Classic WoW
			"DireMaulNorth",		-- Classic WoW
			"DireMaulWest",			-- Classic WoW
			"Gnomeregan",			-- Classic WoW
			"GnomereganEnt",		-- Classic WoW
			"Maraudon",			-- Classic WoW
			"MaraudonEnt",			-- Classic WoW
			"RagefireChasm",		-- Classic WoW
			"RazorfenDowns",		-- Classic WoW
			"RazorfenKraul",		-- Classic WoW
			"SMArmory",			-- Classic WoW
			"SMCathedral",			-- Classic WoW
			"SMGraveyard",			-- Classic WoW
			"SMLibrary",			-- Classic WoW
			"ScarletMonasteryEnt",		-- Classic WoW
			"Scholomance",			-- Classic WoW
			"ShadowfangKeep",		-- Classic WoW
			"TheStockade",			-- Classic WoW
			"Stratholme",			-- Classic WoW
			"TheSunkenTemple",		-- Classic WoW
			"TheSunkenTempleEnt",		-- Classic WoW
			"Uldaman",			-- Classic WoW
			"UldamanEnt",			-- Classic WoW
			"WailingCaverns",		-- Classic WoW
			"WailingCavernsEnt",		-- Classic WoW
			"ZulFarrak",			-- Classic WoW
		},
		[ATLAS_DDL_PARTYSIZE_10] = {
		},
		[ATLAS_DDL_PARTYSIZE_20TO40] = {
			"BlackrockMountainEnt",		-- Classic WoW
			"BlackwingLair",		-- Classic WoW
			"MoltenCore",			-- Classic WoW
		},
	},
	[ATLAS_DDL_TYPE] = {
		[ATLAS_DDL_TYPE_INSTANCE] = {
			"BlackfathomDeeps",		-- Classic WoW
			"BlackrockDepths",		-- Classic WoW
			"BlackwingLair",		-- Classic WoW
			"BlackrockSpireLower",		-- Classic WoW
			"BlackrockSpireUpper",		-- Classic WoW
			"TheDeadmines",			-- Classic WoW
			"DireMaulEast",			-- Classic WoW
			"DireMaulNorth",		-- Classic WoW
			"DireMaulWest",			-- Classic WoW
			"Gnomeregan",			-- Classic WoW
			"Maraudon",			-- Classic WoW
			"MoltenCore",			-- Classic WoW
			"RagefireChasm",		-- Classic WoW
			"RazorfenDowns",		-- Classic WoW
			"RazorfenKraul",		-- Classic WoW
			"SMArmory",			-- Classic WoW
			"SMCathedral",			-- Classic WoW
			"SMGraveyard",			-- Classic WoW
			"SMLibrary",			-- Classic WoW
			"Scholomance",			-- Classic WoW
			"ShadowfangKeep",		-- Classic WoW
			"Stratholme",			-- Classic WoW
			"TheStockade",			-- Classic WoW
			"TheSunkenTemple",		-- Classic WoW
			"Uldaman",			-- Classic WoW
			"WailingCaverns",		-- Classic WoW
			"ZulFarrak",			-- Classic WoW
		},
		[ATLAS_DDL_TYPE_ENTRANCE] = {
			"BlackrockMountainEnt",		-- Classic WoW
			"TheDeadminesEnt",		-- Classic WoW
			"ScarletMonasteryEnt",		-- Classic WoW
			"BlackfathomDeepsEnt",		-- Classic WoW
			"DireMaulEnt",			-- Classic WoW
			"GnomereganEnt",		-- Classic WoW
			"MaraudonEnt",			-- Classic WoW
			"TheSunkenTempleEnt",		-- Classic WoW
			"UldamanEnt",			-- Classic WoW
			"WailingCavernsEnt",		-- Classic WoW
		},
	},
}
