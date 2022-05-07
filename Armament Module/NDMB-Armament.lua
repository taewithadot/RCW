--Neko PMC Armament Module

trigger.action.outText("NDMB Armament Module v1.00 loaded!", 10) --DEBUG

UnitPunishmentImminent = {}

function IntegratedbasicSerialize(s)
    if s == nil then
      return "\"\""
    else
      if ((type(s) == 'number') or (type(s) == 'boolean') or (type(s) == 'function') or (type(s) == 'table') or (type(s) == 'userdata') ) then
        return tostring(s)
      elseif type(s) == 'string' then
        return string.format('%q', s)
      end
    end
end


function IntegratedserializeWithCycles(name, value, saved)
  local basicSerialize = function (o)
    if type(o) == "number" then
      return tostring(o)
    elseif type(o) == "boolean" then
      return tostring(o)
    else -- assume it is a string
      return IntegratedbasicSerialize(o)
    end
  end

  local t_str = {}
  saved = saved or {}       -- initial value
  if ((type(value) == 'string') or (type(value) == 'number') or (type(value) == 'table') or (type(value) == 'boolean')) then
    table.insert(t_str, name .. " = ")
    if type(value) == "number" or type(value) == "string" or type(value) == "boolean" then
      table.insert(t_str, basicSerialize(value) ..  "\n")
    else

      if saved[value] then    -- value already saved?
        table.insert(t_str, saved[value] .. "\n")
      else
        saved[value] = name   -- save name for next time
        table.insert(t_str, "{}\n")
        for k,v in pairs(value) do      -- save its fields
          local fieldname = string.format("%s[%s]", name, basicSerialize(k))
          table.insert(t_str, IntegratedserializeWithCycles(fieldname, v, saved))
        end
      end
    end
    return table.concat(t_str)
  else
    return ""
  end
end


function writetofile(data, file)--Function for saving to file (commonly found)
	File = io.open(file, "w")
	File:write(data)
	File:close()
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

		dofile("stockpile_static.lua") --get current stockpile

		--Check for valid munitions

		for i = 1, #ammo do

			local weaponType = ammo[i].desc.typeName
			local weaponCount = ammo[i].count

			if stockpile_static[weaponType] ~= nil and stockpile_static[weaponType] < weaponCount then
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

			if stockpile_static[weaponType] ~= nil and stockpile_static[weaponType] >= weaponCount then
				stockpile_static[weaponType] = stockpile_static[weaponType] - weaponCount --subtract weapon from stockpile
				trigger.action.outText("Subtracting from stockpile..", 10) --DEBUG

			end

		end

		stockpile_serialised = IntegratedserializeWithCycles("stockpile_static", stockpile_static)
		writetofile(stockpile_serialised, "stockpile_static.lua")
			
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

			if stockpile_static[weaponType] ~= nil then
				stockpile_static[weaponType] = stockpile_static[weaponType] + weaponCount
				trigger.action.outText("Returning weapon to stockpile..", 10) --DEBUG
			end

		end

	stockpile_serialised = IntegratedserializeWithCycles("stockpile_static", stockpile_static)
	writetofile(stockpile_serialised, "stockpile_static.lua")


	elseif UnitPunishmentImminent[Event.initiator:getName()] == true then
		trigger.action.outText(Event.initiator:getPlayerName() .. " has found salvation!", 10) --DEBUG
		UnitPunishmentImminent[Event.initiator:getName()] = false
	end

end
world.addEventHandler(LoadoutCheck_Land)