minetest.register_craft({
	output = 'beacon:blue',
	recipe = {
		{'', 'dye:blue', ''},
		{'dye:blue', 'beacon:empty', 'dye:blue'},
		{'', 'dye:blue', ''},
	}
})

minetest.register_craft({
	output = 'beacon:empty',
	recipe = {
		{'default:steel_ingot', 'default:glass', 'default:steel_ingot'},
		{'default:mese_crystal_fragment', 'default:torch', 'default:mese_crystal_fragment'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})