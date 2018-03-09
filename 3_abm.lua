-- Abm Active Block Modifier sono funzioni che vengono eseguite ripetutamente
-- per tutti i blocchi del tipo indicato
-- La base emette particelle
minetest.register_abm({
    nodenames = {modname..":bluebase"}, --makes small particles emanate from the beginning of a beam
    interval = 1,
    chance = 2,
    action = function(pos, node)

      minetest.add_particlespawner(
        32, --amount
        4, --time
        {x=pos.x-0.25, y=pos.y-0.25, z=pos.z-0.25}, --minpos
        {x=pos.x+0.25, y=pos.y+0.25, z=pos.z+0.25}, --maxpos
        {x=-0.8, y=-0.8, z=-0.8}, --minvel
        {x=0.8, y=0.8, z=0.8}, --maxvel
        {x=0,y=0,z=0}, --minacc
        {x=0,y=0,z=0}, --maxacc
        0.5, --minexptime
        1, --maxexptime
        1, --minsize
        2, --maxsize
        false, --collisiondetection
        "blueparticle.png" --texture
      )
    end,
  })

-- e il faro originale deve generare il raggio laser, ma solo una volta
-- usato soprattutto per mantenere la contabilita' dei fari in beacons (!)
minetest.register_abm({
    nodenames = {modname..":blue"},
    interval = 5,
    chance = 1,
    action = function(pos)
      if (beacons:exists(pos)) then return end

      beacons:add(pos)
      -- this was original
      pos.y = pos.y + 1

      minetest.add_node(pos, {name=modname..":bluebase"})
      for i=1,179 do
        minetest.add_node({x=pos.x, y=pos.y+i, z=pos.z}, {name=modname..":bluebeam"})
      end
      -- until here
    end -- check sal only first time
  })
