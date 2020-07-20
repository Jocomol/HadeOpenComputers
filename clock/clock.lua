local cfg = {}
local component = require("component")
local sides = require("sides")

print("exit with ctrl+alt+c")

local f = io.open("./clock.cfg","rb")
if f then
 local newcfg = serial.unserialize(f:read("*a"))
 f:close()
 for key,value in pairs(newcfg) do
  cfg[key] = value
end

side = nil
if (cfg[key]=="up")
  side = sides.up
end
if (cfg[key]=="bottom")
  side = sides.bottom
end
if (cfg[key]=="left")
  side = sides.left
end
if (cfg[key]=="right")
  side = sides.right
end
if (cfg[key]=="front")
  side = sides.front
end
if (cfg[key]=="back")
  side = sides.back
end

while (true)
do
  os.sleep(cfg[timeOff])
  component.redstone.setOutput(sides.up, 15)
  os.sleep(cfg[timeOn])
  component.redstone.setOutput(sides.up, 0)
end
