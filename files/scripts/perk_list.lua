-- Acid immunity
table.insert(perk_list,
    {
        id = "PROTECTION_ACID",
        ui_name = "$perk_protection_acid",
        ui_description = "$perkdesc_protection_acid",
        ui_icon = "data/ui_gfx/perk_icons/protection_acid.png",
        perk_icon = "data/items_gfx/perks/protection_acid.png",
        game_effect = "PROTECTION_ACID",
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

-- Lava immunity
table.insert(perk_list,
    {
        id = "PROTECTION_LAVA",
        ui_name = "$perk_protection_lava",
        ui_description = "$perkdesc_protection_lava",
        ui_icon = "data/ui_gfx/perk_icons/protection_lava.png",
        perk_icon = "data/items_gfx/perks/protection_lava.png",
        game_effect = "PROTECTION_LAVA",
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

-- Polymorph immunity
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