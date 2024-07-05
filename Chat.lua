function IN()
print("Your Computer ID is",os.getComputerID())
print("Specify Modem Location on block")
print("Location List: top, bottom, left, right, back, front, (back if it is pocket computer)")
local mod = io.read()
rednet.open(mod)
print("Reading All Incoming Traffic:")
local i=1
while i==1 do
a, b, c, d = os.pullEvent("rednet_message")
print(a,"From ID:",b,",Message:", c,"Protocol/Distance:", d)
end
end

function OUT()
print("Your Computer ID is",os.getComputerID())
print("Specify Modem Location on block")
print("Location List: top, bottom, left, right, back, front, (back if it is pocket computer)")
local mod = io.read()
rednet.open(mod)
print("Specify ID to Send:")
local ID = io.read()
print("Specify Message to Send:")
local msg = io.read()
print("Specify Protocol to Send:")
local prt = io.read()
rednet.send(tonumber(ID), msg, prt)
local i=1
while i==1 do
print("Specify Message to Send:")
local msg = io.read()
rednet.send(tonumber(ID), msg, prt)
print(rednet.send(tonumber(ID), msg, prt))
end
end

local i=1
while i==1 do
print("Chatting System")
print("In OR Out?")
local IoO = io.read()
if IoO == "In" then
IN()
elseif IoO == "Out" then
OUT()
else
print("Selection Error")
end
end
