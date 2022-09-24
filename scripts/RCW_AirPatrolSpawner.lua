--RCW Air Patrol Spawner by Taerdryn

incursionZone = {}

patrolObjLow = {}
patrolObjMed = {}
patrolObjHigh = {}
supportObj = {}

patrolGrpLow = {}
patrolGrpMed = {}
patrolGrpHigh = {}
supportGrp = {}

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


--initialise incursion zone tables and patrol spawn status
for i = 1, zoneCount do

	incursionZone[i] = ZONE:FindByName("IZ"..i) --enumerate zone list based on zoneCount parameter
	if scriptDebug == true then trigger.action.outText("Zone " .. i .. " radius is set to " .. incursionZone[i]:GetRadius(),5) end --DEBUG

	if zoneGroupCount[i] == nil then

		zoneGroupCount[i] = 0 -- set any unset zones to 0 spawn count to avoid problems with zone handler function

	end

end


function incursionZoneHandler()

	for i = 1, zoneCount do

		local coord=incursionZone[i]:GetCoordinate() --getCoordinate of each incursionZone
		local airbase=coord:GetClosestAirbase() --find closest airbase to coordinate
		local coalition = airbase:GetCoalition() --get coalition of closest airbase to zone
		
		if scriptDebug == true then trigger.action.outText("Closest airbase to zone " .. i .. " is " .. airbase:GetName(), 5) end--DEBUG

		if coalition == 1 then --if closest airbase is enemy
			
			incursionZone[i]:Scan({Object.Category.UNIT},{Unit.Category.AIRPLANE}) --scan each incursionZone for planes


			if zoneHeat[tostring(i)] == nil then 

				if file_exists("RCW_Heat.lua") then

					dofile("RCW_Heat.lua")

				end

				if zoneHeat[tostring(i)] == nil then

					zoneHeat[tostring(i)] = 0 -- set any unset zones to 0 spawn count to avoid problems with zone handler function

				end

			end

			if incursionZone[i]:IsNoneInZoneOfCoalition(2) == false and zoneHeat[tostring(i)] < 1080 then

				zoneHeat[tostring(i)] = zoneHeat[tostring(i)] + 1
				if scriptDebug == true then trigger.action.outText("Zone "..i.." Heat: "..zoneHeat[tostring(i)].."/1080",5) end--DEBUG

			end

			if incursionZone[i]:IsNoneInZoneOfCoalition(2) == true and zoneHeat[tostring(i)] > 1 then --if any friendlies are in zone

					zoneHeat[tostring(i)] = zoneHeat[tostring(i)] - 1
					if scriptDebug == true then trigger.action.outText("Zone "..i.." Heat: "..zoneHeat[tostring(i)].."/1080",5) end --DEBUG

			end


			if (patrolObjLow[i] ~= nil and zoneHeat[tostring(i)] > 1 and patrolGrpLow[i]:CountAliveUnits() == 0) or (patrolObjLow[i] == nil and zoneHeat[tostring(i)] > 1) then --check if a patrol has ever been spawned here

				patrolAliveLow[i] = 0
				patrolSpawner(i,1)

			end

			if (patrolObjMed[i] ~= nil and zoneHeat[tostring(i)] > 360 and patrolGrpMed[i]:CountAliveUnits() == 0 and zoneGroupCount[i] > 1) or (patrolObjMed[i] == nil and zoneHeat[tostring(i)] > 360 and zoneGroupCount[i] > 1) then --check if a patrol has ever been spawned here

				patrolAliveMed[i] = 0
				patrolSpawner(i,2)

			end

			if (patrolObjHigh[i] ~= nil and zoneHeat[tostring(i)] > 720 and patrolGrpHigh[i]:CountAliveUnits() == 0 and zoneGroupCount[i] > 2) or (patrolObjHigh[i] == nil and zoneHeat[tostring(i)] > 720 and zoneGroupCount[i] > 2) then --check if a patrol has ever been spawned here

				patrolAliveHigh[i] = 0
				patrolSpawner(i,3)

			end

		end

		if zoneSupportAircraft[i] ~= nil then

			for j = 1, zoneSupportAircraft[i] do

				if zoneSupportSide[i] ~= nil then

					if scriptDebug == true then trigger.action.outText("Airbase coalition is " .. coalition .. " and Support Side is " .. zoneSupportSide[i], 5) end --DEBUG

				end

				if zoneSupportSide[i] ~= nil and zoneSupportSide[i] == coalition then

					if supportObj[i] == nil then

						supportObj[i] = {}

					end


					if supportGrp[i] == nil then

						supportGrp[i] = {}

					end

					if supportObj[i][j] == nil then

						if scriptDebug == true then trigger.action.outText("Support aircraft " .. j .. " for zone " .. i .. " has yet to be initialised, spawning now.", 5) end --DEBUG
						supportSpawner(i,j)

					elseif supportGrp[i][j]:CountAliveUnits() == 0 then

						if scriptDebug == true then trigger.action.outText("It looks like support aircraft " .. j " for zone " .. i .. " has been despawned or destroyed, respawning now", 5) end --DEBUG
						supportSpawner(i,j)
					end

				else

					if scriptDebug == true then trigger.action.outText("There are support aircraft in zone " .. i .. ", but not for the coalition holding the airbase", 5) end

				end

			end

		end

	end

	writetofile(betterSerialize(zoneHeat, "zoneHeat"), "RCW_Heat.lua")
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

		if scriptDebug == true then trigger.action.outText("Spawning Low Heat Patrol..", 5) end --DEBUG
		patrolAliveLow[zoneNumber] = lowToSpawn --select a random patrol group to spawn
		if scriptDebug == true then trigger.action.outText("Random number was ".. patrolAliveLow[zoneNumber], 5) end --DEBUG
		if scriptDebug == true then trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolAliveLow[zoneNumber], 5) end --DEBUG
		patrolObjLow[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolAliveLow[zoneNumber]) --create spawn object for patrol group
		patrolObjLow[zoneNumber]:InitCleanUp(120)
		patrolGrpLow[zoneNumber] = patrolObjLow[zoneNumber]:Spawn() --spawn patrol group
		timer.scheduleFunction(stuckCheck, patrolGrpLow[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	end

	if zoneGroupCount[zoneNumber] > 0 and skipMedSpawn == false and heat == 2 then

		if scriptDebug == true then trigger.action.outText("Spawning Med Heat Patrol..", 5) end
		patrolAliveMed[zoneNumber] = medToSpawn --select a random patrol group to spawn
		if scriptDebug == true then trigger.action.outText("Random number was "..patrolAliveMed[zoneNumber], 5) end--DEBUG
		if scriptDebug == true then trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolAliveMed[zoneNumber], 5) end --DEBUG
		patrolObjMed[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolAliveMed[zoneNumber]) --create spawn object for patrol group
		patrolObjMed[zoneNumber]:InitCleanUp(120)
		patrolGrpMed[zoneNumber] = patrolObjMed[zoneNumber]:Spawn() --spawn patrol group
		timer.scheduleFunction(stuckCheck, patrolGrpMed[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	end

	if zoneGroupCount[zoneNumber] > 0 and skipHighSpawn == false and heat == 3 then

		if scriptDebug == true then trigger.action.outText("Spawning High Heat Patrol..", 5) end --DEBUG
		patrolAliveHigh[zoneNumber] = highToSpawn --select a random patrol group to spawn
		if scriptDebug == true then trigger.action.outText("Random number was "..patrolAliveHigh[zoneNumber], 5) end --DEBUG
		if scriptDebug == true then trigger.action.outText("Spawning " .. "z" .. zoneNumber .. "p" .. patrolAliveHigh[zoneNumber], 5) end --DEBUG
		patrolObjHigh[zoneNumber] = SPAWN:New("z" .. zoneNumber .. "p" .. patrolAliveHigh[zoneNumber]) --create spawn object for patrol group
		patrolObjHigh[zoneNumber]:InitCleanUp(120)
		patrolGrpHigh[zoneNumber] = patrolObjHigh[zoneNumber]:Spawn() --spawn patrol group
		timer.scheduleFunction(stuckCheck, patrolGrpHigh[zoneNumber], timer.getTime() + 300) -- Schedule stuck check to happen in 5 minutes

	end

end


function supportSpawner(zoneNumber, acNumber)

	if scriptDebug == true then trigger.action.outText("Spawning support aircraft " .. acNumber .. " for zone ".. zoneNumber, 5) end --DEBUG
	supportObj[zoneNumber][acNumber] = SPAWN:New("z" .. zoneNumber .. "s" .. acNumber)
	supportObj[zoneNumber][acNumber]:InitCleanUp(300)
	supportGrp[zoneNumber][acNumber] = supportObj[zoneNumber][acNumber]:Spawn()
	timer.scheduleFunction(stuckCheck,supportGrp[zoneNumber][acNumber], timer.getTime() + 300)

end


function stuckCheck(groupToCheck)

	if groupToCheck:AllOnGround() and groupToCheck:GetVelocityKNOTS() < 3 then

		if scriptDebug == true then trigger.action.outText("Stuck check complete - all units still on ground and not moving, destroying group", 5) end --DEBUG
		groupToCheck:Destroy(true)
		return

	end
	if scriptDebug == true then trigger.action.outText("Stuck check complete - some or all group units are airborne or on the move.", 5) end --DEBUG

end


trigger.action.outText("RCW Air Patrol Spawner Loaded!", 5)
timer.scheduleFunction(incursionZoneHandler, nil, timer.getTime() + 1) --schedule scan of incursion zones