
TestUtil = {}

function TestUtil:test_Pos2Str()
  local pos = {x=1,y=2,z=3}
  luaunit.assertEquals(pos2str(pos),"(1,2,3)")
end

function TestUtil:test_Info()
  chats = {}
  info("hello")
  luaunit.assertEquals(#chats,1)
  luaunit.assertEquals(chats[1],"("..modname..") INFO: hello") 
end