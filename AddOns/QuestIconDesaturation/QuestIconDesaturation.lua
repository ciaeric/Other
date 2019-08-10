local _, qid = ...

local _G = _G
local tinsert = tinsert
local wipe = wipe
local gsub = gsub
local hooksecurefunc = hooksecurefunc
local GetNumQuestLogEntries = GetNumQuestLogEntries
local GetQuestLogTitle = GetQuestLogTitle
local MAX_NUM_QUESTS = MAX_NUM_QUESTS
local NUMGOSSIPBUTTONS = NUMGOSSIPBUTTONS
local QuestFrameGreetingPanel = QuestFrameGreetingPanel

local escapes = {
    ["|c%x%x%x%x%x%x%x%x"] = "", -- color start
    ["|r"] = "" -- color end
}
local function unescape(str)
    for k, v in pairs(escapes) do
        str = gsub(str, k, v)
    end
    return str
end

local completedActiveQuests = {}
local function getCompletedQuestsInLog()
    wipe(completedActiveQuests)
    local numEntries = GetNumQuestLogEntries()
    local questLogTitleText, isComplete, questId
    for i = 1, numEntries, 1 do
        questLogTitleText, _, _, _, _, isComplete, _, questId = GetQuestLogTitle(i)
        if (isComplete == 1 or qid.QuestsNeverMarkedComplete[questId]) then
            completedActiveQuests[questLogTitleText] = true
        end
    end
    return completedActiveQuests
end

local function setDesaturation(maxLines, lineMap, iconMap, activePred)
    local completedQuests = getCompletedQuestsInLog()
    for i = 1, maxLines do
        local line = lineMap[i]
        local icon = iconMap[i]
        icon:SetDesaturated(nil)
        if (line:IsVisible() and activePred(line)) then
            local questName = unescape(line:GetText())
            if (not completedQuests[questName]) then
                icon:SetDesaturated(1)
            end
        end
    end
end

local function getLineAndIconMaps(maxLines, titleIdent, iconIdent)
    local lines = {}
    local icons = {}
    for i = 1, maxLines do
        local titleLine = _G[titleIdent .. i]
        tinsert(lines, titleLine)
        tinsert(icons, _G[titleLine:GetName() .. iconIdent])
    end
    return lines, icons
end

local questFrameTitleLines, questFrameIconTextures = getLineAndIconMaps(MAX_NUM_QUESTS, "QuestTitleButton", "QuestIcon")
QuestFrameGreetingPanel:HookScript(
    "OnShow",
    function()
        setDesaturation(
            MAX_NUM_QUESTS,
            questFrameTitleLines,
            questFrameIconTextures,
            function(line)
                return line.isActive == 1
            end
        )
    end
)

local gossipFrameTitleLines, gossipFrameIconTextures =
    getLineAndIconMaps(NUMGOSSIPBUTTONS, "GossipTitleButton", "GossipIcon")
hooksecurefunc(
    "GossipFrameUpdate",
    function()
        setDesaturation(
            NUMGOSSIPBUTTONS,
            gossipFrameTitleLines,
            gossipFrameIconTextures,
            function(line)
                return line.type == "Active"
            end
        )
    end
)
