-- scrive informazione di "debug"
function info(str)
  local str = "("..modname..") INFO: "..str 
  print(str)
  minetest.chat_send_all(str)
end

-- converte le coordinate di una tabella {x,y,z} in formato stampabile [x,y,z]
function pos2str(pos)
  return "("..pos.x..","..pos.y..","..pos.z..")"
end
