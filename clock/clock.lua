local r = component.proxy(component.list("redstone")())
while true do
  if (r.getInput(3) > 0)
  then
    computer.pullSignal(0.05)
    r.setOutput(5, 15)
    computer.pullSignal(0.05)
    r.setOutput(5, 0)
  end
end
