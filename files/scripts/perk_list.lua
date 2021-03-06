-- Acid immunity
if ModSettingGet("immunity_perks.protection_acid") then
table.insert(perk_list,
    {
        id = "PROTECTION_ACID",
        ui_name = "$perk_protection_acid",
        ui_description = "$perkdesc_protection_acid",
        ui_icon = "data/ui_gfx/perk_icons/protection_acid.png",
        perk_icon = "data/items_gfx/perks/protection_acid.png",
        -- game_effect = "PROTECTION_ACID",
        stackable = STACKABLE_NO,
        usable_by_enemies = true,
        not_in_default_perk_pool = false,
        func = function( entity_perk_item, entity_who_picked, item_name )
            EntitySetDamageFromMaterial( entity_who_picked, "acid", 0 )
            EntitySetDamageFromMaterial( entity_who_picked, "ice_acid_static", 0 )
            EntitySetDamageFromMaterial( entity_who_picked, "ice_acid_glass", 0 )
        end,
        func_remove = function( entity_who_picked )
            EntitySetDamageFromMaterial( entity_who_picked, "acid", 0.005 )
            EntitySetDamageFromMaterial( entity_who_picked, "ice_acid_static", 0.001 )
            EntitySetDamageFromMaterial( entity_who_picked, "ice_acid_glass", 0.001 )
        end,
    }
)
end

-- Lava immunity
if ModSettingGet("immunity_perks.protection_lava") then
table.insert(perk_list,
    {
        id = "PROTECTION_LAVA",
        ui_name = "$perk_protection_lava",
        ui_description = "$perkdesc_protection_lava",
        ui_icon = "data/ui_gfx/perk_icons/protection_lava.png",
        perk_icon = "data/items_gfx/perks/protection_lava.png",
        -- game_effect = "PROTECTION_LAVA",
        stackable = STACKABLE_NO,
        usable_by_enemies = true,
        not_in_default_perk_pool = false,
        func = function( entity_perk_item, entity_who_picked, item_name )
            EntitySetDamageFromMaterial( entity_who_picked, "lava", 0 )
        end,
        func_remove = function( entity_who_picked )
            EntitySetDamageFromMaterial( entity_who_picked, "lava", 0.003 )
        end,
    }
)
end

-- Poison immunity
if ModSettingGet("immunity_perks.protection_poison") then
    table.insert(perk_list,
        {
            id = "PROTECTION_POISON",
            ui_name = "$perk_protection_poison",
            ui_description = "$perkdesc_protection_poison",
            ui_icon = "data/ui_gfx/perk_icons/protection_poison.png",
            perk_icon = "data/items_gfx/perks/protection_poison.png",
            -- game_effect = "PROTECTION_POISON",
            stackable = STACKABLE_NO,
            usable_by_enemies = true,
            not_in_default_perk_pool = false,
            func = function( entity_perk_item, entity_who_picked, item_name )
                EntitySetDamageFromMaterial( entity_who_picked, "poison", 0 )
                EntitySetDamageFromMaterial( entity_who_picked, "rock_static_poison", 0 )
                local damageModel = EntityGetFirstComponent( entity_who_picked, "DamageModelComponent" )
                ComponentObjectSetValue2( damageModel, "damage_multipliers", "poison", 0 )
            end,
            func_remove = function( entity_who_picked )
                EntitySetDamageFromMaterial( entity_who_picked, "poison", 0.001 )
                EntitySetDamageFromMaterial( entity_who_picked, "rock_static_poison", 0.001 )
                local damageModel = EntityGetFirstComponent( entity_who_picked, "DamageModelComponent" )
                ComponentObjectSetValue2( damageModel, "damage_multipliers", "poison", 1 )
            end,
        }
    )
end

-- Polymorph immunity
if ModSettingGet("immunity_perks.protection_polymorph") then
table.insert(perk_list,
    {
        id = "PROTECTION_POLYMORPH",
        ui_name = "$perk_protection_polymorph",
        ui_description = "$perkdesc_protection_polymorph",
        ui_icon = "data/ui_gfx/perk_icons/protection_polymorph.png",
        perk_icon = "data/items_gfx/perks/protection_polymorph.png",
        game_effect = "PROTECTION_POLYMORPH",
        stackable = STACKABLE_NO,
        usable_by_enemies = true,
        not_in_default_perk_pool = false,
        func = function( entity_perk_item, entity_who_picked, item_name )

        end,
        func_remove = function( entity_who_picked )
            
        end,
    }
)
end

-- Freeze immunity
if ModSettingGet("immunity_perks.protection_freeze") then
    table.insert(perk_list,
        {
            id = "PROTECTION_FREEZE",
            ui_name = "$perk_protection_freeze",
            ui_description = "$perkdesc_protection_freeze",
            ui_icon = "data/ui_gfx/perk_icons/protection_freeze.png",
            perk_icon = "data/items_gfx/perks/protection_freeze.png",
            game_effect = "PROTECTION_FREEZE",
            stackable = STACKABLE_NO,
            usable_by_enemies = true,
            not_in_default_perk_pool = false,
            func = function( entity_perk_item, entity_who_picked, item_name )
    
            end,
            func_remove = function( entity_who_picked )
                
            end,
        }
    )
end

-- Slice immunity
if ModSettingGet("immunity_perks.protection_slice") then
    local entityTag = "protection_slice"
    table.insert(perk_list,
        {
            id = "PROTECTION_SLICE",
            ui_name = "$perk_protection_slice",
            ui_description = "$perkdesc_protection_slice",
            ui_icon = "data/ui_gfx/perk_icons/protection_slice.png",
            perk_icon = "data/items_gfx/perks/protection_slice.png",
            -- game_effect = "PROTECTION_SLICE",
            stackable = STACKABLE_NO,
            usable_by_enemies = true,
            not_in_default_perk_pool = false,
            func = function( entity_perk_item, entity_who_picked, item_name )
                local damageModel = EntityGetFirstComponent( entity_who_picked, "DamageModelComponent" )
                ComponentObjectSetValue2( damageModel, "damage_multipliers", "slice", 0 )
                EntityAddTag( entity_who_picked, entityTag )
            end,
            func_remove = function( entity_who_picked )
                local damageModel = EntityGetFirstComponent( entity_who_picked, "DamageModelComponent" )
                ComponentObjectSetValue2( damageModel, "damage_multipliers", "slice", 1 )
                EntityRemoveTag( entity_who_picked, entityTag )
            end,
        }
    )
end