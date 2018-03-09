--registriamo un nodo che non e' in inventario.
--La base del faro  che emette il raggio laser
minetest.register_node(modname..":bluebase", {
    visual_scale = 1.0,
    drawtype = "plantlike",
    tiles = {"bluebase.png"},
    paramtype = "light",
    walkable = false,
    diggable = false,
    light_source = 13,
    groups = {not_in_creative_inventory=1}
  })
-- anche questo nodo non e' in inventario
-- Il raggio laser
minetest.register_node(modname..":bluebeam", {
    visual_scale = 1.0,
    drawtype = "plantlike",
    tiles = {"bluebeam.png"},
    paramtype = "light",
    walkable = false,
    diggable = false,
    light_source = 50,
    groups = {not_in_creative_inventory=1}
  })
--code for "unactivated beacon"
minetest.register_node(modname..":empty", {
    description = "Unactivated Beacon",
    tiles = {"emptybeacon.png"},
    light_source = 3,
    groups = {cracky=3,oddly_breakable_by_hand=3},
    drop = modname..":empty",
  })

--code for "Main blue source cube"
minetest.register_node(modname..":blue", {
    description = "Blue Beacon",
    tiles = {"bluebeacon.png"},
    light_source = 13,
    groups = {cracky=3,oddly_breakable_by_hand=3},
    drop = modname..":blue",
    on_destruct = function(pos) --remove the beam above a source when source is removed
      beacons:del(pos)

      for i=1,180 do
        minetest.remove_node({x=pos.x, y=pos.y+i, z=pos.z}) --thanks Morn76 for this bit of code!
      end
    end
  })