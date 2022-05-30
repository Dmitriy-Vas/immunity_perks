ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/immunity_perks/files/scripts/perk_list.lua" )

local gameTranslation = ModTextFileGetContent("data/translations/common.csv")
local modTranslation = ModTextFileGetContent("mods/immunity_perks/files/translations/common.csv")
ModTextFileSetContent( "data/translations/common.csv", gameTranslation .. modTranslation )

if ModSettingGet("immunity_perks.protection_slice") then
    dofile_once("mods/immunity_perks/files/scripts/protection_slice.lua")
end