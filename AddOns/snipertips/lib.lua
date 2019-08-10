-- SniperTips Library

-- Library Version
local MAJOR, MINOR = 1, 0
local SniperTips = LibStub:NewLibrary("SniperTips-2.0", MAJOR, MINOR);

SniperTips.kbDEBUG = true

if not SniperTips then
  return -- already loaded and no upgrade necessary
end

function SniperTips:Dump(str, obj)
  if ViragDevTool_AddData and SniperTips.kbDEBUG then
      ViragDevTool_AddData(obj, str)
  end
end

SniperTips.handlers = SniperTips.handlers or {}
SniperTips.handlers.items = SniperTips.handlers.items or {}
SniperTips.handlers.spells = SniperTips.handlers.spells or {}
SniperTips.handlers.units = SniperTips.handlers.units or {}
SniperTips.handlers.buffs = SniperTips.handlers.buffs or {}
SniperTips.handlers.debuffs = SniperTips.handlers.debuffs or {}

if not SniperTips.frame then
  SniperTips.frame=CreateFrame("Frame", SniperTips)
end

local tooltipTypes = {
  "GameTooltip",
  "ItemRefTooltip",
};

-- Options without TipTac. If the base TipTac addon is used, the global TipTac_Config table is used instead
local cfg = {
  if_enable = true,
  if_infoColor = { 0.2, 0.6, 1 },
  if_itemQualityBorder = true,

  if_showCurrencyId = true,					-- Az: no option for this added to TipTac/options yet!
  if_showAchievementIdAndCategory = false,	-- Az: no option for this added to TipTac/options yet!
  if_showIcon = true,
  if_smartIcons = true,
  if_borderlessIcons = false,
  if_iconSize = 42,
};

local tipsToAddIcon = tooltipTypes;
local tipDataAdded = {}; -- Sometimes, OnTooltipSetItem/Spell is called before the tip has been filled using SetHyperlink, we use the array to test if the tooltip has had data added

function SniperTips:GetVersion()
  return MAJOR, MINOR
end

function SniperTips:AddItemHandler(Addon)
  table.insert(SniperTips.handlers.items, Addon.name)
end

function SniperTips:AddSpellHandler(Addon)
  table.insert(SniperTips.handlers.spells, Addon.name)
end

function SniperTips:AddUnitHandler(Addon)
  table.insert(SniperTips.handlers.units, Addon.name)
end

function SniperTips:AddBuffHandler(Addon)
  table.insert(SniperTips.handlers.buffs, Addon.name)
end

function SniperTips:AddDebuffHandler(Addon)
  table.insert(SniperTips.handlers.debuffs, Addon.name)
end

-- OnTooltipSetItem
local function OnTooltipSetItem(self,...)
  if (not tipDataAdded[self]) then
    local _, link = self:GetItem();
    if (link) then
      local linkType, id = link:match("H?(%a+):(%d+)");
      if (id) then
        tipDataAdded[self] = linkType;
        SniperTips:HandleItem(self,link,linkType,id);
      end
    end
  end
end

local function OnTooltipSetSpell(self,...)
  if (not tipDataAdded[self]) then
    local spell, id = self:GetSpell();
    SniperTips:HandleSpell(self,spell,id)
  end
end

local function OnTooltipSetUnit(self,...)
  if (not tipDataAdded[self]) then
    local name, unit = self:GetUnit();
    SniperTips:HandleUnit(self,name,unit)
  end
end

local function SetUnitAura(self,unit,index,filter)
  if (not tipDataAdded[self]) then
    if (filter == 'HELPFUL') then
      SniperTips:HandleBuff(self, unit, index)
    elseif (filter == 'PASSIVE') then
      SniperTips:Dump('handling passive', true)
    else
      SniperTips:HandleDebuff(self, unit, index)
    end
  end
end

local function OnTooltipCleared(self)
  tipDataAdded[self] = nil;
  if (self.SetIconTextureAndText) then
    self:SetIconTextureAndText();
  end
end

-- Resolve the tooltips from _G
local function ResolveGlobalNamedObjects(tipTable)
  local resolved = {};
  for index, tipName in ipairs(tipTable) do
    -- lookup the global object from this name, assign false if nonexistent, to preserve the table entry
    local tip = (_G[tipName] or false);

    -- Check if this object has already been resolved. This can happen for thing like AtlasLoot, which sets AtlasLootTooltip = GameTooltip
    if (resolved[tip]) then
      tip = false;
    elseif (tip) then
      resolved[tip] = index;
    end

    -- Assign the resolved object or false back into the table array
    tipTable[index] = tip;
  end
end

-- HOOK: ItemRefTooltip + GameTooltip: SetHyperlink
local function SetHyperlink_Hook(self,hyperLink)
  if (not tipDataAdded[self]) then
    local refString = hyperLink:match("|H([^|]+)|h") or hyperLink;
    local linkType = refString:match("^[^:]+");

    -- Call Relevant handler

    -- Only add to the tooltip if it has lines?
    if (self:NumLines() > 0) then
      if (linkType == 'item') then
        tipDataAdded[self] = "hyperlink";
        SniperTips:HandleItem(self,refString,(":"):split(refString));
      elseif (linkType == 'achievement') then
      else
      end
    end
  end
end

-- Frame Management

function SniperTips.frame:DoHooks()
  for index, tip in ipairs(tooltipTypes) do
    if (type(tip) == "table") and (type(tip.GetObjectType) == "function") and (tip:GetObjectType() == "GameTooltip") then
      hooksecurefunc(tip,"SetHyperlink",SetHyperlink_Hook);
      tip:HookScript("OnTooltipSetItem",OnTooltipSetItem);
      tip:HookScript("OnTooltipSetUnit",OnTooltipSetUnit);
      tip:HookScript("OnTooltipSetSpell",OnTooltipSetSpell);
      hooksecurefunc(tip, "SetUnitAura", SetUnitAura);
      tip:HookScript("OnTooltipCleared",OnTooltipCleared);
    end
  end
end

function SniperTips.frame:OnApplyConfig()
  local gameFont = GameFontNormal:GetFont();
  for index, tip in ipairs(tooltipTypes) do
    if (type(tip) == "table") and (tipsToAddIcon[tip:GetName()]) and (tip.ttIcon) then
      if (cfg.if_showIcon) then
        tip.ttIcon:SetSize(cfg.if_iconSize,cfg.if_iconSize);
        tip.ttCount:SetFont(gameFont,(cfg.if_iconSize / 3),"OUTLINE");
        tip.SetIconTextureAndText = SetIconTextureAndText;
        if (cfg.if_borderlessIcons) then
          tip.ttIcon:SetTexCoord(0.07,0.93,0.07,0.93);
        else
          tip.ttIcon:SetTexCoord(0,1,0,1);
        end
      elseif (tip.SetIconTextureAndText) then
        tip.ttIcon:Hide();
        tip.SetIconTextureAndText = nil;
      end
    end
  end
end

SniperTips.frame:SetScript("OnEvent",function(self,event,...)
  -- What tipsToModify to use, TipTac's main addon, or our own?
  if (TipTac and TipTac.tipsToModify) then
    tooltipTypes = TipTac.tipsToModify;
  else
    ResolveGlobalNamedObjects(tooltipTypes)
  end

  -- Use TipTac settings if installed
  if (TipTac_Config) then
    cfg = TipTac_Config;
  end

  -- Hook tips and apply settings
  SniperTips.frame:DoHooks();
  SniperTips.frame:OnApplyConfig();

  -- Cleanup; we no longer need to receive any events
  SniperTips.frame:UnregisterAllEvents();
  SniperTips.frame:SetScript("OnEvent",nil);
end);

SniperTips.frame:SetScript("OnUpdate", OnUpdate);

SniperTips.frame:RegisterEvent("VARIABLES_LOADED");

-- Other Addon Stuff

function SniperTips:GetProfile()
  local config = _G['SniperTips_Config']
  return config:GetProfile()
end

-- Tooltip Handlers

function SniperTips:HandleItem(self, link, linkType, id)
  local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
  itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID,
  isCraftingReagent = GetItemInfo(link);

  local item = {
    id = id,
    name = itemName,
    link = itemLink,
    rarity = itemRarity,
    ilvl = itemLevel,
    minLevel = itemMinLevel,
    stackCount = itemStackCount,
    type = itemType,
    subType = itemSubType,
    equipLoc = itemEquipLoc,
    icon = itemIcon,
    sellPrice = itemSellPrice,
    classID = itemClassID,
    subClassID = itemSubClassID,
    bindType = bindType,
    expacID = expacID,
    setId = itemSetID,
    reagent = isCraftingReagent
  }

  local config = SniperTips:GetProfile()

  for _, addonName in ipairs(SniperTips.handlers.items) do
    local a = LibStub("AceAddon-3.0"):GetAddon(addonName);
    a:HandleItem(self, item, config)
  end
end

function SniperTips:HandleSpell(self, spell, id)
  local spellData = {
    spell = spell,
    id = id
  }

  local config = SniperTips:GetProfile()

  for _, addonName in ipairs(SniperTips.handlers.spells) do
    local a = LibStub("AceAddon-3.0"):GetAddon(addonName);
    a:HandleSpell(self, spellData, config)
  end
end

function SniperTips:HandleUnit(self, unit, name, guid)
  local config = SniperTips:GetProfile()
  for _, addonName in ipairs(SniperTips.handlers.units) do
    local a = LibStub("AceAddon-3.0"):GetAddon(addonName);
    a:HandleUnit(self, unit, config)
  end
end

function SniperTips:IsClassic()
  if (_G['GetPetHappiness'] ~= nil) then
    return true
  end
  return false
end

function SniperTips:ParseAura(unit, index)
  local isClassic = SniperTips:IsClassic()
  local aura = { UnitAura(unit, index) }
  local buff = {
    unit = unit,
    index = index,
    spell = {}
  }

  buff.name = aura[1]

  if (isClassic) then
    --buff.name = select(1, auras)
  else
    buff.icon = aura[2]
    buff.count = aura[3]
    buff.type = aura[4]
    buff.duration = aura[5]
    buff.expirationTime = aura[6]
    buff.source = aura[7]
    buff.isStealable = aura[8]
    buff.nameplateShowPersonal = aura[9]
    buff.spell.id = aura[10]
    buff.canApplyAura = aura[11]
    buff.isBossDebuff = aura[12]
    buff.castByPlayer = aura[13]
    buff.nameplateShowAll = aura[14]
    buff.timeMod = aura[15]
  end

  return buff
end

function SniperTips:HandleBuff(self, unit, index)
  local config = SniperTips:GetProfile()
  local buff = SniperTips:ParseAura(unit, index)

  for _, addonName in ipairs(SniperTips.handlers.buffs) do
    local a = LibStub("AceAddon-3.0"):GetAddon(addonName);
    a:HandleBuff(self, buff, config)
  end
end

function SniperTips:HandleDebuff(self, unit, index)
  local config = SniperTips:GetProfile()
  local debuff = SniperTips:ParseAura(unit, index)

  for _, addonName in ipairs(SniperTips.handlers.debuffs) do
    local a = LibStub("AceAddon-3.0"):GetAddon(addonName);
    a:HandleDebuff(self, debuff, config)
  end
end
