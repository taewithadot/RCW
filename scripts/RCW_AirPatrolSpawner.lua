--RCW Air Patrol Spawner by Taerdryn

incursionZone = {}
incursionZoneAirbase = {}

patrolObjLow = {}
patrolObjMed = {}
patrolObjHigh = {}
supportObj = {{}}

patrolGrpLow = {}
patrolGrpMed = {}
patrolGrpHigh = {}
supportGrp = {{}}

patrolAliveLow = {}
patrolAliveMed = {}
patrolAliveHigh = {}

zoneHeat = {}

-- THE FOLLOWING PARAMETERS SECTION IS INCLUDED IN THE MIZ FOR USER TO CONFIGURE, AND AS SUCH IS COMMENTED OUT HERE --

--[[
--Parameters that can be customised depending on mission setup

zoneCount = 19 --Specify how many zones are in the mission here. THIS MUST BE EXACTLY THE NUMBER OF INCURSION ZONES IN THE MIZ!

--Spawn pool for each zone. Make sure to set to the correct amount based on how many groups you make for each zone.
zoneGroupCount = {}
zoneGroupCount[5] = 3
zoneGroupCount[6] = 2
zoneGroupCount[7] = 9


--define zoneSupportAircraft with a number for a zone if there are support aircraft such as AWACS or tankers. The number should be the same as the number of support aircraft defined for that zone.

zoneSupportAircraft = {}
zoneSupportAircraft[1] = 2

--Define the side that a zone's support aircraft belong to, to avoid them spawning if the airbase ownership changes side. 1 for red, 2 for blue.

zoneSupportSide = {}
zoneSupportSide[1] = 2

]]--




--initialise incursion zone tables and patrol spawn status
for i = 1, zoneCount do

	incursionZone[i] = ZONE:FindByName("IZ"..i) --enumerate zone list based on zoneCount parameter

	if zoneGroupCount[i] == nil then

		zoneGroupCount[i] = 0 -- set any unset zones to 0 spawn count to avoid problems with zone handler function

	end

end


function incursionZoneHandler()

	for i = 1, zoneCount do

		local coord=incursionZone[i]:GetCoordinate() --getCoordinate of each incursionZone
		local airbase=coord:GetClosestAirbase() --find closest airbase to coordinate
		local coalition = airbase:GetCoalition() --get coalition of closest airbase to zone
		--trigger.action.outText("Closest airbase is " .. airbase:GetName(), 5) --DEBUG

		if coalition == 1 then --if closest airbase is enemy
			
			incursionZone[i]:Scan({Object.Category.UNIT},{Unit.Category.AIRPLANE}) --scan each incursionZone for planes


			if zoneHeat[i] == nil then --if any friendlies are in zone

				zoneHeat[i] = 0

			end

			if incursionZone[i]:IsNoneInZoneOfCoalition(2) == false and zoneHeat[i] < 1080 then

				zoneHeat[i] = zoneHeat[i] + 1
				trigger.action.outText("Zone "..i.." Heat: "..zoneHeat[i].."/1080",5) --DEBUG

			end

			if incursionZone[i]:IsNoneInZoneOfCoalition(2) == true and zoneHeat[i] > 1 then --if any friendlies are in zone

					zoneHeat[i] = zoneHeat[i] - 1
					trigger.action.outText("Zone "..i.." Heat: "..zoneHeat[i].."/1080",5) --DEBUG

			end


			if (patrolObjLow[i] ~= nil and zoneHeat[i] > 1 and patrolGrpLow[i]:CountAliveUnits() == 0) or (patrolObjLow[i] == nil and zoneHeat[i] > 1) then --check if a patrol has ever been spawned here

				patrolAliveLow[i] = 0
				patrolSpawner(i,1)

			end

			if (patrolObjMed[i] ~= nil and zoneHeat[i] > 360 and patrolGrpMed[i]:CountAliveUnits() == 0 and zoneGroupCount[i] > 1) or (patrolObjMed[i] == nil and zoneHeat[i] > 360 and zoneGroupCount[i] > 1) then --check if a patrol has ever been spawned here

				patrolAliveMed[i] = 0
				patrolSpawner(i,2)

			end

			if (patrolObjHigh[i] ~= nil and zoneHeat[i] > 720 and patrolGrpHigh[i]:CountAliveUnits() == 0 and zoneGroupCount[i] > 2) or (patrolObjHigh[i] == nil and zoneHeat[i] > 720 and zoneGroupCount[i] > 2) then --check if a patrol has ever been spawned here

				patrolAliveHigh[i] = 0
				patrolSpawner(i,3)

			end

		end

		if zoneSupportAircraft[i] ~= nil then

			for j = 1, zoneSupportAircraft[i] do

				if zoneSupportSide[i] ~= nil then

					trigger.action.outText("Airbase coalition is " .. coalition .. " and Support Side is " .. zoneSupportSide[i], 5)

				end

				if zoneSupportSide[i] ~= nil and zoneSupportSide[i] == coalition then

					if supportObj[i][j] == nil then

						trigger.action.outText("Support aircraft " .. j .. " for zone " .. i .. " has yet to be initialised, spawning now.", 5) --DEBUG
						supportSpawner(i,j)

					elseif supportGrp[i][j]:CountAliveUnits() == 0 then

						trigger.action.outText("It looks like support aircraft " .. j " for zone " .. i .. " has been despawned or destroyed, respawning now", 5) --DEBUG
						supportSpawner(i,j)
					end

				else

					trigger.action.outText("There are support aircraft in zone " .. i .. ", but not for the coalition holding the airbase", 5)

				end



			end

		end

	end

	timer.scheduleFunction(incursionZoneHandler, nil, timer.getTime() + 10) --reschedule scan of incursion zones

end


function patrolSpawner(zoneNumber,heat)

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


function supportSpawner(zoneNumber, acNumber)

	trigger.action.outText("Spawning support aircraft " .. acNumber .. " for zone ".. zoneNumber, 5)
	supportObj[zoneNumber][acNumber] = SPAWN:New("z" .. zoneNumber .. "s" .. acNumber)
	supportObj[zoneNumber][acNumber]:InitCleanUp(300)
	supportGrp[zoneNumber][acNumber] = supportObj[zoneNumber][acNumber]:Spawn()
	timer.scheduleFunction(stuckCheck,supportGrp[zoneNumber][acNumber], timer.getTime() + 300)

end


function stuckCheck(groupToCheck)

	if groupToCheck:AllOnGround() and groupToCheck:GetVelocityKNOTS() < 3 then

		trigger.action.outText("Stuck check complete - all units still on ground and not moving, destroying group", 5) --DEBUG
		groupToCheck:Destroy(true)
		return

	end
	trigger.action.outText("Stuck check complete - some or all group units are airborne or on the move.", 5) --DEBUG

end


trigger.action.outText("RCW Air Patrol Spawner Loaded!", 5)
timer.scheduleFunction(incursionZoneHandler, nil, timer.getTime() + 1) --schedule scan of incursion zones