luaunit = require("luaunit")

dofile("tests/0_mocks.lua")
dofile("1_util.lua")


function testPos2Str()
  local pos = {x=1,y=2,z=3}
  luaunit.assertEquals(pos2str(pos),"(1,2,3)")
end

function testInfo()
  info("hello")
  luaunit.assertEquals(#chats,1)
  luaunit.assertEquals(chats[1],"("..modname..") INFO: hello") 
end

os.exit( luaunit.LuaUnit.run() )