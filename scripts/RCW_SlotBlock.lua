--RCW Slot Block script by Taerdryn

function writetofile(data, file)--Function for saving to file (commonly found)
	File = io.open(file, "w")
	File:write(data)
	File:close()
end

function file_exists(name) --check if the file already exists for writing
  if lfs.attributes(name) then
  return true
  else
  return false end 
end

function betterSerialize(tableToSerialize, tableName)

  --tableToSerialize should be a table, and is the table that will be serialized to JSON.
  --tableName should be a string, and will be the name of the table that is saved in JSON, and ultimately the variable name of the table when loaded back into lua

    serializedTable = net.lua2json(tableToSerialize)
    serializedTableFixQuotes = string.gsub(serializedTable, "\"", "\\\"")
    jsonReadyToWrite = tableName .. " = net.json2lua(\"" .. serializedTableFixQuotes .. "\")"
    return jsonReadyToWrite

end

deadSlots = {}

killSlot = {}
function killSlot:onEvent(Event)

	if Event.id == world.event.S_EVENT_PILOT_DEAD or Event.id == world.event.S_EVENT_EJECTION then

		if Event.initiator:getPlayerName() then
			deadSlots[Event.initiator:getName()] = Event.initiator:getName()
			writetofile(betterSerialize(deadSlots, "deadSlots"), "RCW_DeadSlots.lua")
		end

	end


end
world.addEventHandler(killSlot)

checkSlot = {}
function checkSlot:onEvent(Event)

	if Event.id == world.event.S_EVENT_BIRTH then

		if Event.initiator:getPlayerName() then

			for k in pairs(deadSlots) do

				if deadSlots[k] == Event.initiator:getName() then

					trigger.action.outText("This aircraft has been destroyed, and cannot be used!",15)
					Unit.getByName(deadSlots[k]):destroy()

				end

			end

		end

	end

end
world.addEventHandler(checkSlot)


if file_exists("RCW_DeadSlots.lua") then

	dofile("RCW_DeadSlots.lua")

end

trigger.action.outText("RCW Slot Block loaded!",5)