-- register command "beacons" listing all beacons
minetest.register_chatcommand("beacons", {
    params = "",
    description = "mostra i fari",
    func = function(name, param)
      return true, beacons:list()
    end,
  })