
modname = "test"

chats = {}
abms = {}
nodes = {}
crafts = {}
commands = {}

minetest = { 
  chat_send_all = 
  function(x)
    table.insert(chats,x)
  end,
  get_current_modname = function()
    return "test"
  end,
  get_modpath = function(x)
    return "."
  end,
  register_abm = function(x)
    table.insert(abms,x)
  end,
  register_node = function(node, definition)
    print("checking "..node)
    luaunit.assertStrMatches(node, modname..":.*")
    for i,v in ipairs(definition.tiles) do
      luaunit.assertEquals({v,file_exists("textures/"..v)},{v,true})
    end
    table.insert(nodes,{name=node, definition=definition})
  end,
  register_craft = function(x)
    table.insert(crafts,x)
  end,
  register_chatcommand = function(x)
    table.insert(commands,x)
  end
}

function countLines(s)
  local count = 0
  for c in string.gmatch(s,"\n") do count = count+1 end
  return count
end

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end
