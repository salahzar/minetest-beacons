
minetest.register_craft({
    output = modname..':blue',
    recipe = {
      {'', 'dye:blue', ''},
      {'dye:blue', modname..':empty', 'dye:blue'},
      {'', 'dye:blue', ''},
    }
  })

minetest.register_craft({
    output = modname..':empty',
    recipe = {
      {'default:steel_ingot', 'default:glass', 'default:steel_ingot'},
      {'default:mese_crystal_fragment', 'default:torch', 'default:mese_crystal_fragment'},
      {'default:obsidian', 'default:obsidian', 'default:obsidian'},
    }
  })