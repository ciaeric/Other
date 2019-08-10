local _, qid = ...

local questsNeverMarkedComplete = {
    804, -- Sarkoth
}

local questIdMap = {}
for _, id in ipairs(questsNeverMarkedComplete) do
    questIdMap[id] = true
end
qid.QuestsNeverMarkedComplete = questIdMap
