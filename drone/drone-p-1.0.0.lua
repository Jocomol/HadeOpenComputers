local modem=component.proxy(component.list("modem")())
local drone=component.proxy(component.list("drone")())

modem.open(1)
drone.setStatusText("Hade Co.")
drone.setLightColor(0x00B7FF)

while true do
  local e, _, _, _, _, command = computer.pullSignal()
  if e == "modem_message" then
    drone.setStatusText(command)
    drone.move(0,tonumber(command),0)
  end
end
