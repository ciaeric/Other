-- SniperTips Configuration
local SniperTipsConfig = LibStub("AceAddon-3.0"):NewAddon("SniperTips_Config")
local defaults = {
  profile = {
    enabled = true,
    showIds = true,
    tipColour = { r = 0.2, g = 0.6, b = 1 }
  }
}

function SniperTipsConfig:OnInitialize()
  -- Register AceDB with defaults
  self.db = LibStub("AceDB-3.0"):New("SniperTips_DB", defaults)

  -- AceDBOptions
  local options = {
    type = "group",
    args = {
      enabled = {
        name = "Enabled",
        desc = "Enables / disables the addon",
        type = "toggle",
        handler = SniperTipsConfig,
        get = 'GetEnabled',
        set = 'SetEnabled'
      },
      showIds = {
        name = "Show IDs",
        desc = "Shows Spell and Item IDs",
        type = "toggle",
        handler = SniperTipsConfig,
        get = 'GetShowIDs',
        set = 'SetShowIDs'
      },
      tipColour = {
        name = "Default Tooltip Colour",
        desc = "Set the default tooltip colour",
        type = "color",
        handler = SniperTipsConfig,
        get = 'GetTooltipColour',
        set = 'SetTooltipColour'
      }
    }
  }

  options.args.profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)

  --
  -- ACE CONFIG
  --
  local config = LibStub("AceConfig-3.0")
  config:RegisterOptionsTable("SniperTips", options, {"/snipertips", "/st"})

  -- AceConfigDialog
  LibStub("AceConfigDialog-3.0"):AddToBlizOptions("SniperTips")
end

function SniperTipsConfig:GetDB()
  return self.db
end

function SniperTipsConfig:GetProfile()
  local profile = self.db:GetCurrentProfile()
  local config = self.db.profiles[profile]
  for k,v in pairs(defaults.profile) do
    if (not config[k]) then
      config[k] = v
    end
  end
  return config
end

-- ACE DB OPTIONS

-- Enabled
function SniperTipsConfig:GetEnabled(info)
  return self.db.profile.enabled
end
function SniperTipsConfig:SetEnabled(info, value)
  self.db.profile.enabled = value
end

-- ShowIDs
function SniperTipsConfig:GetShowIDs(info)
  return self.db.profile.showIds
end
function SniperTipsConfig:SetShowIDs(info, value)
  self.db.profile.showIds = value
end

-- Tooltip Colour
function SniperTipsConfig:GetTooltipColour(info)
  return unpack(self.db.profile.tipColour)
end
function SniperTipsConfig:SetTooltipColour(info, r, g, b)
  self.db.profile.tipColour = { r, g, b }
end

_G['SniperTips_Config'] = SniperTipsConfig
