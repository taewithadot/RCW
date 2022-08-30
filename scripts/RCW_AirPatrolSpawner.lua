--RCW Air Patrol Spawner by Taerdryn
incursionZone = {}
--patrolSpawning = {}
--patrolSpawned = {}

patrolObjLow = {}
patrolObjMed = {}
patrolObjHigh = {}

patrolGrpLow = {}
patrolGrpMed = {}
patrolGrpHigh = {}

patrolAliveLow = {}
patrolAliveMed = {}
patrolAliveHigh = {}

zoneHeat = {}

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
	--patrolSpawning[i] = false
	--patrolSpawned[i] = false --set all patrol spawns to false as mission has just started

end



--[[
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
				if zoneHeat[i] == nil then
					zoneHeat[i] = 1
					trigger.action.outText("Zone "..i.." Heat: 1/720",5) --DEBUG
				elseif zoneHeat[i] < 720 then
					zoneHeat[i] = zoneHeat[i] + 1
					trigger.action.outText("Zone "..i.." Heat: "..zoneHeat[i].."/720",5) --DEBUG
				end
				if patrolObj[i] ~= nil then --check if a patrol has ever been spawned here

					trigger.action.outText("Existing patrol object found with ".. patrolGroup[i]:CountAliveUnits() .. " alive units.",5) --DEBUG

					if patrolGroup[i]:CountAliveUnits() == 0 and patrolSpawning[i] == false then --if nothing is alive in patrol

						trigger.action.outText("PATROL DEAD", 5) --DEBUG
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
]]--

function incursionZoneHandlerNew() -- WIP

	for i = 1, zoneCount do

		local coord=incursionZone[i]:GetCoordinate() --getCoordinate of each incursionZone
		local airbase=coord:GetClosestAirbase() --find closest airbase to coordinate
		local coalition = airbase:GetCoalition() --get coalition of closest airbase to zone
		--trigger.action.outText("Closest airbase is " .. airbase:GetName(), 5)

		if coalition == 1 then --if closest airbase is enemy
			
			incursionZone[i]:Scan({Object.Category.UNIT},{Unit.Category.AIRPLANE}) --scan each incursionZone for planes

			if incursionZone[i]:IsNoneInZoneOfCoalition(2) == false then --if any friendlies are in zone
				if zoneHeat[i] == nil then
					zoneHeat[i] = 1
					trigger.action.outText("Zone "..i.." Heat: 1/720",5) --DEBUG
				elseif zoneHeat[i] < 720 then
					zoneHeat[i] = zoneHeat[i] + 1
					trigger.action.outText("Zone "..i.." Heat: "..zoneHeat[i].."/720",5) --DEBUG
				end

				if (patrolObjLow[i] ~= nil and zoneHeat[i] > 1 and patrolGrpLow[i]:CountAliveUnits() == 0) or (patrolObjLow[i] == nil and zoneHeat[i] > 1) then --check if a patrol has ever been spawned here

					patrolAliveLow[i] = 0
					patrolSpawnNew(i,1)

				end

				if (patrolObjMed[i] ~= nil and zoneHeat[i] > 1 and patrolGrpMed[i]:CountAliveUnits() == 0 and zoneGroupCount[i] > 1) or (patrolObjMed[i] == nil and zoneHeat[i] > 1 and zoneGroupCount[i] > 1) then --check if a patrol has ever been spawned here

					patrolAliveMed[i] = 0
					patrolSpawnNew(i,2)

				end

				if (patrolObjHigh[i] ~= nil and zoneHeat[i] > 1 and patrolGrpHigh[i]:CountAliveUnits() == 0 and zoneGroupCount[i] > 2) or (patrolObjHigh[i] == nil and zoneHeat[i] > 1 and zoneGroupCount[i] > 2) then --check if a patrol has ever been spawned here

					patrolAliveHigh[i] = 0
					patrolSpawnNew(i,3)

				end

			end

		end

	end

	timer.scheduleFunction(incursionZoneHandlerNew, nil, timer.getTime() + scanTime) --reschedule scan of incursion zones

end

--[[
function patrolSpawn(zoneNumber)

	if zoneGroupCount[zoneNumber] > 0 then
		local patrolToSpawn = math.random(1, zoneGroupCount[zoneNumber]) --select a random patrol group to spawn
		trigger.action.outText("Random number was "..patrolToSpawn, 5) --DEBUG
		trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolToSpawn, 5) --DEBUG
		patrolObj[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolToSpawn) --create spawn object for patrol group
		patrolObj[zoneNumber]:InitCleanUp(120)
		patrolGroup[zoneNumber] = patrolObj[zoneNumber]:Spawn() --spawn patrol group
		patrolSpawned[zoneNumber] = true --set spawned state to true
		timer.scheduleFunction(spawnFinisher, zoneNumber, timer.getTime() + 5) --give time for units to spawn to stop rare clashes with scan code
		timer.scheduleFunction(stuckCheck, patrolGroup[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	else

		trigger.action.outText("No patrol groups defined for this zone!", 5) --DEBUG

	end
end
]]--


function patrolSpawnNew(zoneNumber,heat) -- WIP

	lowToSpawn = math.random(1, zoneGroupCount[zoneNumber])
	medToSpawn = math.random(1, zoneGroupCount[zoneNumber])
	highToSpawn = math.random(1, zoneGroupCount[zoneNumber])

	skipLowSpawn = false
	skipMedSpawn = false
	skipHighSpawn = false

	if lowToSpawn == patrolAliveMed[zoneNumber] or lowToSpawn == patrolAliveHigh[zoneNumber] then

		skipLowSpawn = true

	end

	if medToSpawn == lowToSpawn or medToSpawn == patrolAliveLow[zoneNumber] or medToSpawn == patrolAliveHigh[zoneNumber] then

		skipMedSpawn = true

	end

	if highToSpawn == medToSpawn or highToSpawn == lowToSpawn or highToSpawn == patrolAliveLow[zonenumber] or highToSpawn == patrolAliveMed[zoneNumber] then

		skipHighSpawn = true

	end

	if zoneGroupCount[zoneNumber] > 0 and skipLowSpawn == false and heat == 1 then

		trigger.action.outText("Spawning Low Heat Patrol..", 5)
		patrolAliveLow[zoneNumber] = lowToSpawn --select a random patrol group to spawn
		trigger.action.outText("Random number was ".. patrolAliveLow[zoneNumber], 5) --DEBUG
		trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolAliveLow[zoneNumber], 5) --DEBUG
		patrolObjLow[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolAliveLow[zoneNumber]) --create spawn object for patrol group
		patrolObjLow[zoneNumber]:InitCleanUp(120)
		patrolGrpLow[zoneNumber] = patrolObjLow[zoneNumber]:Spawn() --spawn patrol group
		timer.scheduleFunction(stuckCheck, patrolGrpLow[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	end

	if zoneGroupCount[zoneNumber] > 0 and skipMedSpawn == false and heat == 2 then

		trigger.action.outText("Spawning Med Heat Patrol..", 5)
		patrolAliveMed[zoneNumber] = medToSpawn --select a random patrol group to spawn
		trigger.action.outText("Random number was "..patrolAliveMed[zoneNumber], 5) --DEBUG
		trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolAliveMed[zoneNumber], 5) --DEBUG
		patrolObjMed[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolAliveMed[zoneNumber]) --create spawn object for patrol group
		patrolObjMed[zoneNumber]:InitCleanUp(120)
		patrolGrpMed[zoneNumber] = patrolObjMed[zoneNumber]:Spawn() --spawn patrol group
		timer.scheduleFunction(stuckCheck, patrolGrpMed[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	end

	if zoneGroupCount[zoneNumber] > 0 and skipHighSpawn == false and heat == 3 then

		trigger.action.outText("Spawning High Heat Patrol..", 5)
		patrolAliveHigh[zoneNumber] = highToSpawn --select a random patrol group to spawn
		trigger.action.outText("Random number was "..patrolAliveHigh[zoneNumber], 5) --DEBUG
		trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolAliveHigh[zoneNumber], 5) --DEBUG
		patrolObjHigh[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolAliveHigh[zoneNumber]) --create spawn object for patrol group
		patrolObjHigh[zoneNumber]:InitCleanUp(120)
		patrolGrpHigh[zoneNumber] = patrolObjHigh[zoneNumber]:Spawn() --spawn patrol group
		timer.scheduleFunction(stuckCheck, patrolGrpHigh[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	end

end

--[[
function spawnFinisher(zoneNumber)

	patrolSpawning[zoneNumber] = false --set spawning state to false
	trigger.action.outText("Spawn finishing for zone " .. zoneNumber .. ", spawning state is " .. tostring(patrolSpawning[zoneNumber]), 5) --DEBUG

end
]]--


function stuckCheck(groupToCheck)

	if groupToCheck:AllOnGround() and groupToCheck:GetVelocityKNOTS() < 3 then
		trigger.action.outText("Stuck check complete - all units still on ground, destroying group", 5) --DEBUG
		groupToCheck:Destroy(true)
		return
	end
	trigger.action.outText("Stuck check complete - some or all group units are airborne or on the move.", 5) --DEBUG

end



trigger.action.outText("RCW Air Patrol Spawner Loaded!", 5)
timer.scheduleFunction(incursionZoneHandlerNew, nil, timer.getTime() + 1) --schedule scan of incursion zones