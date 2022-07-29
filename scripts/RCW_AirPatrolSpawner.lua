--RCW Air Patrol Spawner by Taerdryn
incursionZone = {}
patrolSpawning = {}
patrolSpawned = {}
patrolObj = {}

--zoneCount = 18 --Specify how many zones are in the mission here. THIS MUST BE EXACTLY THE NUMBER OF INCURSION ZONES IN THE MIZ!
--patrolMinSpawnTime = 300 --Specify minimum spawn time for a patrol when a friendly enters an incursion zone.
--patrolMaxSpawnTime = 900 --Specify maximum spawn time for a patrol when a friendly enters an incursion zone.

--Spawn pool for each zone. Make sure to set to the correct amount based on how many groups you make for each zone.
--zoneGroupCount[1] = 25
--zoneGroupCount[2] = 25
--zoneGroupCount[3] = 25
--zoneGroupCount[4] = 25
--zoneGroupCount[5] = 25
--zoneGroupCount[6] = 25
--zoneGroupCount[7] = 25
--zoneGroupCount[8] = 25
--zoneGroupCount[9] = 25
--zoneGroupCount[10] = 25
--zoneGroupCount[11] = 25
--zoneGroupCount[12] = 25
--zoneGroupCount[13] = 25
--zoneGroupCount[14] = 25
--zoneGroupCount[15] = 25
--zoneGroupCount[16] = 25
--zoneGroupCount[17] = 25
--zoneGroupCount[18] = 25
--zoneGroupCount[19] = 25


--initialise incursion zone tables and patrol spawn status

for i = 1, zoneCount do

	incursionZone[i] = ZONE:FindByName("IZ"..i) --enumerate zone list based on zoneCount parameter
	patrolSpawning[i] = false
	patrolSpawned[i] = false --set all patrol spawns to false as mission has just started

end

function incursionZoneScan()

	local randSpawnTime = math.random(patrolMinSpawnTime, patrolMaxSpawnTime)

	for i = 1, zoneCount do

		local coord=incursionZone[i]:GetCoordinate() --getCoordinate of each incursionZone
		local airbase=coord:GetClosestAirbase() --find closest airbase to coordinate
		local coalition = airbase:GetCoalition() --get coalition of closest airbase to zone
		--trigger.action.outText("Closest airbase is " .. airbase:GetName(), 5)

		if coalition == 1 then --if closest airbase is enemy
			
			incursionZone[i]:Scan({Object.Category.UNIT},{Unit.Category.AIRPLANE}) --scan each incursionZone for planes

			if incursionZone[i]:IsNoneInZoneOfCoalition(2) == false then --if any friendlies are in zone
				
				if patrolObj[i] ~= nil then --check if a patrol has ever been spawned here

					trigger.action.outText("Existing patrol object found",5) --DEBUG

					if patrolObj[i].AliveUnits == 0 and patrolSpawning[i] == false then --if nothing is alive in patrol

						trigger.action.outText("PATROL DEAD", 5)
						patrolSpawned[i] = false --then it is not spawned

					end

					if patrolSpawning[i] == false and patrolSpawned[i] == false then --if patrol not currently spawning, and is not already spawned

						trigger.action.outText("Nothing alive on existing patrol, scheduling another one to spawn in ." .. randSpawnTime .. " seconds.", 5) --DEBUG
						patrolSpawning[i] = true --set patrol to spawning state
						timer.scheduleFunction(patrolSpawn, i, timer.getTime() + randSpawnTime) --schedule patrol to spawn

					end

				elseif patrolSpawning[i] == false then --if patrol has never been spawned, make sure initial spawn is not scheduled
					trigger.action.outText("No previous patrol object found, creating new patrol object and spawning patrol in " .. randSpawnTime .. " seconds.", 5) --DEBUG
					patrolSpawning[i] = true --set patrol to spawning state
					timer.scheduleFunction(patrolSpawn, i, timer.getTime() + randSpawnTime) --schedule patrol to spawn

				end

			end

		end

	end

	timer.scheduleFunction(incursionZoneScan, nil, timer.getTime() + scanTime) --reschedule scan of incursion zones

end

function patrolSpawn(zoneNumber)

	if zoneGroupCount[zoneNumber] > 0 then
		local patrolToSpawn = math.random(1, zoneGroupCount[zoneNumber]) --select a random patrol group to spawn
		trigger.action.outText("Random number was "..patrolToSpawn, 5) --DEBUG
		trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolToSpawn, 5) --DEBUG
		patrolObj[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolToSpawn) --create spawn object for patrol group
		patrolObj[zoneNumber]:Spawn() --spawn patrol group
		patrolSpawned[zoneNumber] = true --set spawned state to true
		timer.scheduleFunction(spawnFinisher, zoneNumber, timer.getTime() + 5) --give time for units to spawn to stop rare clashes with scan code

	else

		trigger.action.outText("No patrol groups defined for this zone!", 5) --DEBUG

	end
end


function spawnFinisher(zoneNumber)

	patrolSpawning[zoneNumber] = false --set spawning state to false
	trigger.action.outText("Spawn finishing for zone " .. zoneNumber .. ", spawning state is " .. tostring(patrolSpawning[zoneNumber]), 5) --DEBUG

end

trigger.action.outText("RCW Air Patrol Spawner Loaded!", 5)
timer.scheduleFunction(incursionZoneScan, nil, timer.getTime() + 1) --schedule scan of incursion zones