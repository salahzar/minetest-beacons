
modname = "test"

chats = {}

minetest = { chat_send_all = 
  function(x)
    table.insert(chats,x)
  end
}

function countLines(s)
  local count = 0
  for c in string.gmatch(s,"\n") do count = count+1 end
  return count
end
