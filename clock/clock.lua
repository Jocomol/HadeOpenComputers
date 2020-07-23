local component = require("component")
local sides = require("sides")
while (true)
do
  while (component.redstone.getInput(sides.left) > 0)
  do
    os.sleep(0.05)
    component.redstone.setOutput(sides.right, 15)
    os.sleep(0.05)
    component.redstone.setOutput(sides.right, 0)
  end

end
