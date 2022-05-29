dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_change_callback( mod_id, gui, in_main_menu, setting, old_value, new_value  )
	print( tostring(new_value), setting.id:upper() )
end

local mod_id = "immunity_perks" -- This should match the name of your mod's folder.
mod_settings_version = 1 -- This is a magic global that can be used to migrate settings to new mod versions. call mod_settings_get_version() before mod_settings_update() to get the old value. 
mod_settings = 
{
	{
		category_id = "group_of_settings",
		ui_name = "$immunity_perks_settings_ui_name",
		settings = {
			{
				id = "protection_acid",
				ui_name = "$perk_protection_acid",
				ui_description = "$perkdesc_protection_acid",
				value_default = true,
				scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
				change_fn = mod_setting_change_callback,
			},
			{
				id = "protection_lava",
				ui_name = "$perk_protection_lava",
				ui_description = "$perkdesc_protection_lava",
				value_default = true,
				scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
				change_fn = mod_setting_change_callback,
			},
			{
				id = "protection_polymorph",
				ui_name = "$perk_protection_polymorph",
				ui_description = "$perkdesc_protection_polymorph",
				value_default = true,
				scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
				change_fn = mod_setting_change_callback,
			}
		}
	}
}

function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id ) -- This can be used to migrate some settings between mod versions.
	mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end
