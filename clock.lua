!#/usr/bin/lua
local component = require("component")
local sides = require("sides")
while (component.redstone.getInput(sides.left) > 0)
do
  os.sleep(3)
  component.redstone.setOutput(sides.right, 15)
  os.sleep(1)
  component.redstone.setOutput(sides.right, 0)
end

