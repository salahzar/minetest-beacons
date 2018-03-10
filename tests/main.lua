luaunit = require("luaunit")
pretty = require("pl.pretty")

-- ambiente fittizio per test (mock)
dofile("tests/0_mocks.lua")

-- verifico la mod
dofile("init.lua")

-- asserisco i comandi e le tabelle elementari
function testRegistrationsInserted() 
  luaunit.assertEquals(#commands,1)
  luaunit.assertEquals(#abms,2)
  luaunit.assertEquals(#nodes,4)
  luaunit.assertEquals(#crafts,2)
end

dofile("tests/1@test_util.lua")
dofile("tests/2@test_beacons.lua")



os.exit( luaunit.LuaUnit.run("-v") )

