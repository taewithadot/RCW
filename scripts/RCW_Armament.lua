--Neko PMC Armament Module

UnitPunishmentImminent = {}

function writetofile(data, file)--Function for saving to file (commonly found)
	File = io.open(file, "w")
	File:write(data)
	File:close()
end

function betterSerialize(tableToSerialize, tableName)

  --tableToSerialize should be a table, and is the table that will be serialized to JSON.
  --tableName should be a string, and will be the name of the table that is saved in JSON, and ultimately the variable name of the table when loaded back into lua

    serializedTable = net.lua2json(tableToSerialize)
    serializedTableFixQuotes = string.gsub(serializedTable, "\"", "\\\"")
    jsonReadyToWrite = tableName .. " = net.json2lua(\"" .. serializedTableFixQuotes .. "\")"
    return jsonReadyToWrite

end

function punishPlayer(unitName, time)

	trigger.action.outText("AW JESUS!", 10) --DEBUG
	if UnitPunishmentImminent[unitName] == true then
		trigger.action.setUnitInternalCargo(unitName, 1000000)
	end

end

LoadoutCheck_Takeoff = {}
function LoadoutCheck_Takeoff:onEvent(Event)

	if Event.id ~= world.event.S_EVENT_TAKEOFF then
		return
	end

	if Event.initiator and Event.initiator:getPlayerName() then --If initiator exists and they are a player

		--dofile("wingmembers_default.lua") --load wingmember list
		--local wing = wingMember[Event.initiator:getPlayerName()] --set wing to players wing - usable when wingmember lua gets loaded

		trigger.action.outText("Player " .. " took off!", 10) --DEBUG

		UnitPunishmentImminent[Event.initiator:getName()] = false --reset punishment flag

		local ammo = Event.initiator:getAmmo() --get loadout of player

		dofile("RCW_Stockpile.lua") --get current stockpile

		--Check for valid munitions

		for i = 1, #ammo do

			local weaponType = ammo[i].desc.typeName
			local weaponCount = ammo[i].count

			if RCW_Stockpile[weaponType] ~= nil and RCW_Stockpile[weaponType] < weaponCount then
				UnitPunishmentImminent[Event.initiator:getName()] = true -- flag user for punishment
				trigger.action.outText("INVALID PYLON DETECTED FOR " .. Event.initiator:getPlayerName() .. " !", 10) --DEBUG
			end

		end

		if UnitPunishmentImminent[Event.initiator:getName()] == true then
			timer.scheduleFunction(punishPlayer, Event.initiator:getName(), timer.getTime() + 180) --schedule punishPlayer function
			trigger.action.outText("Player " .. Event.initiator:getPlayerName() .. " took off with an invalid loadout! Land within three minutes or face the wrath of the gods!", 10) --DEBUG
			return
		end

		

		for i = 1, #ammo do

			local weaponType = ammo[i].desc.typeName
			local weaponCount = ammo[i].count

			if RCW_Stockpile[weaponType] ~= nil and RCW_Stockpile[weaponType] >= weaponCount then
				RCW_Stockpile[weaponType] = RCW_Stockpile[weaponType] - weaponCount --subtract weapon from stockpile
				trigger.action.outText("Subtracting from stockpile..", 10) --DEBUG

			end

		end

		stockpile_serialised = betterSerialize(RCW_Stockpile, "RCW_Stockpile")
		writetofile(stockpile_serialised, "RCW_Stockpile.lua")
			
	end 
end
world.addEventHandler(LoadoutCheck_Takeoff)



LoadoutCheck_Land = {}
function LoadoutCheck_Land:onEvent(Event)

	if Event.id ~= world.event.S_EVENT_LAND then
		return
	end

	if Event.initiator and Event.initiator:getPlayerName() and UnitPunishmentImminent[Event.initiator:getName()] == false then --If initiator exists and they are a player

		local ammo = Event.initiator:getAmmo()

		for i = 1, #ammo do

			local weaponType = ammo[i].desc.typeName
			local weaponCount = ammo[i].count

			if RCW_Stockpile[weaponType] ~= nil then
				RCW_Stockpile[weaponType] = RCW_Stockpile[weaponType] + weaponCount
				trigger.action.outText("Returning weapon to stockpile..", 10) --DEBUG
			end

		end

	stockpile_serialised = betterSerialize(RCW_Stockpile, "RCW_Stockpile")
	writetofile(stockpile_serialised, "RCW_Stockpile.lua")


	elseif UnitPunishmentImminent[Event.initiator:getName()] == true then
		trigger.action.outText(Event.initiator:getPlayerName() .. " has found salvation!", 10) --DEBUG
		UnitPunishmentImminent[Event.initiator:getName()] = false
	end

end
world.addEventHandler(LoadoutCheck_Land)

trigger.action.outText("RCW Armament loaded!", 10) --DEBUG