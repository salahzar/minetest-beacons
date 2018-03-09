minetest.register_abm({
	nodenames = {"beacon:blue"},
	interval = 5,
	chance = 1,
	action = function(pos)
		pos.y = pos.y + 1
		minetest.add_node(pos, {name="beacon:bluebase"})
		for i=1,179 do
			minetest.add_node({x=pos.x, y=pos.y+i, z=pos.z}, {name="beacon:bluebeam"})
		end
	end,
})