-- SniperTips Addon
--local SniperTipsAddon = LibStub()
local SniperTips_Core = LibStub("AceAddon-3.0"):NewAddon("SniperTips_Core")
local LibTooltip = LibStub("SniperTips-2.0");

SniperTips_Core.debug = true

function SniperTips_Core:Dump(str, obj)
  if ViragDevTool_AddData and SniperTips_Core.debug then
      ViragDevTool_AddData(obj, str)
  end
end

function SniperTips_Core:GetTipColour(cfg)
  return cfg.tipColour[1], cfg.tipColour[2], cfg.tipColour[3]
end

function SniperTips_Core:HandleItem(self, item, config)
  if (self.AddDoubleLine ~= nil) then
    if (config.showIds == true) then
      local r, g, b = SniperTips_Core:GetTipColour(config)

      self:AddDoubleLine('Item ID:', item.id, r, g, b, r, g, b)
    end
  end
end

function SniperTips_Core:HandleSpell(self, spell, config)
  if (self.AddDoubleLine ~= nil) then
    if (config.showIds == true) then
      local r, g, b = SniperTips_Core:GetTipColour(config)

      self:AddDoubleLine('Spell ID:', spell.id, r,g,b, r,g,b)
    end
  end
end

function SniperTips_Core:HandleUnit(self, unit, config)
  if (self.AddDoubleLine ~= nil) then
    if (config.showIds == true) then
      local r, g, b = SniperTips_Core:GetTipColour(config)
      self:AddDoubleLine('Unit ID:', 'TODO', r,g,b, r,g,b)
    end
  end
end

function SniperTips_Core:HandleBuff(self, buff, config)
  if (self.AddDoubleLine ~= nil) then
    SniperTips_Core:Dump('buff', buff)
    if (config.showIds == true) then
      local r,g,b = SniperTips_Core:GetTipColour(config)
      SniperTips_Core:Dump('spellid', buff.spell.id)
      self:AddLine('Spell ID: ' .. buff.spell.id, r,g,b)
    end
  end
end

function SniperTips_Core:HandleDebuff(self, debuff, config)
  if (self.AddDoubleLine ~= nil) then
    if (config.showIds == true) then
      local r,g,b = SniperTips_Core:GetTipColour(config)
      self:AddLine('Spell ID: '.. debuff.spell.id, r,g,b)
    end
  end
end

LibTooltip:AddItemHandler(SniperTips_Core)
LibTooltip:AddSpellHandler(SniperTips_Core)
LibTooltip:AddUnitHandler(SniperTips_Core)
LibTooltip:AddBuffHandler(SniperTips_Core)
LibTooltip:AddDebuffHandler(SniperTips_Core)
