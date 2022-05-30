ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/immunity_perks/files/scripts/perk_list.lua" )

local gameTranslation = ModTextFileGetContent("data/translations/common.csv")
local modTranslation = ModTextFileGetContent("mods/immunity_perks/files/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", gameTranslation .. modTranslation)
