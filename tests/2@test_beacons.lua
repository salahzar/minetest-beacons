
local pos = {x=1,y=2,z=3}
local pos1 = {x=5,y=6,z=7}

TestBeacons = {}
function TestBeacons:test_add()
  local beacons = Beacons.new()
  
  beacons:add(pos)
  luaunit.assertEquals(beacons:count(),1)
  luaunit.assertEquals(beacons:exists(pos),true)
  luaunit.assertEquals(beacons:exists(pos1),false)
  
  beacons:add(pos1)
  luaunit.assertEquals(beacons:count(),2)
  luaunit.assertEquals(beacons:exists(pos),true)
  luaunit.assertEquals(beacons:exists(pos1),true)
end

function TestBeacons:test_del()
  local beacons = Beacons.new()
  beacons:add(pos)
  beacons:add(pos1)
  
  beacons:del(pos)
  luaunit.assertEquals(beacons:count(),1)
  luaunit.assertEquals(beacons:exists(pos),false)
  luaunit.assertEquals(beacons:exists(pos1),true)
  
  beacons:del(pos1)
  luaunit.assertEquals(beacons:count(),0)
  luaunit.assertEquals(beacons:exists(pos),false)
  luaunit.assertEquals(beacons:exists(pos1),false)
  
  
end

function TestBeacons:test_list()
  local beacons = Beacons.new()
  beacons:add(pos)
  beacons:add(pos1)
  luaunit.assertEquals(countLines(beacons:list()),2)
  beacons:del(pos)
  luaunit.assertEquals(countLines(beacons:list()),1)
end
 