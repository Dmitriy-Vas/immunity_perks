local files = {
    'arrow',
    'deck/chainsaw',
    'deck/bouncy_orb',
    'deck/disc_bullet',
    'deck/disc_bullet_big',
    'deck/disc_bullet_bigger',
}

local nxml = dofile_once("mods/immunity_perks/lib/nxml.lua")
for i, file in ipairs( files ) do
    local path = "data/entities/projectiles/" .. file .. ".xml"
	local content = ModTextFileGetContent(path)
	local xml = nxml.parse(content)
	local projectile = xml:first_of("ProjectileComponent")
    projectile.attr.dont_collide_with_tag = "protection_slice"
    ModTextFileSetContent( path, nxml.tostring(xml) )
end