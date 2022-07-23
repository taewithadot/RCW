--RDMB Air Combat Module by Taerdryn
incursionZone = {}
patrolSpawning = {}
patrolSpawned = {}
patrolObj = {}

--zoneCount = 18 --Specify how many zones are in the mission here. THIS MUST BE EXACTLY THE NUMBER OF INCURSION ZONES IN THE MIZ!
--groupsPerZone = 25 --Specify how many different patrol groups are available per incursion zone.
--patrolMinSpawnTime = 300 --Specify minimum spawn time for a patrol when a friendly enters an incursion zone.
--patrolMaxSpawnTime = 900 --Specify maximum spawn time for a patrol when a friendly enters an incursion zone.

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

					trigger.action.outText("Existing patrol object found",5) --debug

					if patrolObj[i].AliveUnits == 0 and patrolSpawning[i] == false then --if nothing is alive in patrol

						trigger.action.outText("PATROL DEAD", 5)
						patrolSpawned[i] = false --then it is not spawned

					end

					if patrolSpawning[i] == false and patrolSpawned[i] == false then --if patrol not currently spawning, and is not already spawned

						trigger.action.outText("Nothing alive on existing patrol, scheduling another one to spawn in ." .. randSpawnTime .. " seconds.", 5)
						patrolSpawning[i] = true --set patrol to spawning state
						timer.scheduleFunction(patrolSpawn, i, timer.getTime() + randSpawnTime) --schedule patrol to spawn

					end

				elseif patrolSpawning[i] == false then --if patrol has never been spawned, make sure initial spawn is not scheduled
					trigger.action.outText("No previous patrol object found, creating new patrol object and spawning patrol in " .. randSpawnTime .. " seconds.", 5)
					patrolSpawning[i] = true --set patrol to spawning state
					timer.scheduleFunction(patrolSpawn, i, timer.getTime() + randSpawnTime) --schedule patrol to spawn

				end

			end

		end

	end

	timer.scheduleFunction(incursionZoneScan, nil, timer.getTime() + 5) --reschedule scan of incursion zones

end

function patrolSpawn(zoneNumber)

	local patrolToSpawn = math.random(1, groupsPerZone) --select a random patrol group to spawn
	trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolToSpawn, 5)
	patrolObj[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolToSpawn) --create spawn object for patrol group
	patrolObj[zoneNumber]:Spawn() --spawn patrol group
	patrolSpawning[zoneNumber] = false --set spawning state to false
	patrolSpawned[zoneNumber] = true --set spawned state to true

end

trigger.action.outText("RDMB Air Combat Module v1.00 Loaded!", 5)
timer.scheduleFunction(incursionZoneScan, nil, timer.getTime() + 5) --schedule scan of incursion zones