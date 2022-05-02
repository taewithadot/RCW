--Neko PMC Armament Module

function writetofile(data, file)--Function for saving to file (commonly found)
	File = io.open(file, "w")
	File:write(data)
	File:close()
end


LoadoutCheck_Takeoff = {}
function LoadoutCheck_Takeoff:onEvent(Event)

	if Event.id == world.event.S_EVENT_TAKEOFF and Event.initiator and Event.initiator.getPlayerName() then --If initiator exists and they are a player

		--insert code to check what wing they are part of here
		--gonna need to check MP player name against a list of MP player names and their wing as a value (0=NRF, 1=first wing, etc)
		dofile("NekoWingMembers_static.lua")
		--insert stockpile loading based on wing membership
		local ammo = Event.initiator:getAmmo()

		for i = 1, #ammo do

			local weaponType = ammo[i].desc.typeName
			local weaponCount = ammo[i].count

			if stockpile_static[weaponType] < weaponCount then
				--punish player
			elseif 
				--subtract weapon from stockpile, dont know if below works?
				stockpile_static[weaponType] = stockpile_static[weaponType] - weaponCount
			end
		end
	end 
end
world.addEventHandler(LoadoutCheck_Takeoff)


LoadoutCheck_Landing = {}
function LoadoutCheck_Landing:onEvent(Event)

	if Event.id == world.event.S_EVENT_LANDING and Event.initiator and Event.initiator.getPlayerName() then --If initiator exists and they are a player

		--insert code to check what wing they are part of here
		--gonna need to check MP player name against a list of MP player names and their wing as a value (0=NRF, 1=first wing, etc)
		dofile("NekoWingMembers_static.lua")
		--insert stockpile loading based on wing membership here
		local ammo = Event.initiator:getAmmo()

		for i = 1, #ammo do

			local weaponType = ammo[i].desc.typeName
			local weaponCount = ammo[i].count

			stockpile_static[WeaponType] = stockpile_static[weaponType] + weaponCount

		end

	end
world.addEventHandler(LoadoutCheck_Landing)

