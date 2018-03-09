-- Mantiene la contabilita' dei "Fari" utilizzati.
-- si usa cosi':
-- v = Beacons.new()
-- e poi si puo' fare
-- v:add(pos) per aggiungere un faro
-- v:del(pos) per rimuovere un faro
-- v:exists(pos) per vedere se c'era gia'
-- v:list() per elencare i fari

Beacons = {} 
Beacons.__index = Beacons 
function Beacons.new()
  local self = setmetatable({}, Beacons)
  self.table = {}
  return self
end

function Beacons.add(self, pos)
  local k = pos2str(pos)
  if(self.table[k] == 1) then return end
  info("genero il faro alle coordinate "..k)
  self.table[k]=1  
end

function Beacons.del(self, pos)
  local k = pos2str(pos)
  self.table[k] = nil
  info("distruggo il faro alle coordinate "..k)
end

function Beacons.exists(self,pos)
  local k = pos2str(pos)
  return self.table[k] == 1
end

function Beacons.list(self)

  local ret = "Fari:\n"
  for k,v in pairs(self.table) do
    -- shows only key,values where v is 1
    if(v==1) then
      ret = ret .. k .. "\n"
    end
  end
  return ret
end

beacons = Beacons.new()
