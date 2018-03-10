-- mod per costruire un faro blu
-- con effetti speciali e raggio laser fino a 180 blocchi di altezza

-- nome e path di questa mod
debug = true
modname = minetest.get_current_modname()
modpath = minetest.get_modpath(modname)

dofile(modpath.."/1_util.lua")     -- funzioni di utilita'
dofile(modpath.."/2_beacons.lua")  -- contabilita' dei "fari" costruiti
dofile(modpath.."/3_abm.lua")      -- active block modifiers
dofile(modpath.."/4_nodes.lua")    -- nodi censiti
dofile(modpath.."/5_craft.lua")    -- crafting dei nodi
dofile(modpath.."/6_commands.lua") -- comandi chat definiti

print("[OK] "..modname)