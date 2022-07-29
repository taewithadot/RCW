env.info('TTI: Beyond Support is loading')
SupportHandler = EVENTHANDLER:New()

spawnAltitude = 8500

Template_A2G_Zeus = {}
Template_A2A_Zeus = {}
Template_A2A_Helo_Zeus = {}
Template_A2G_Zeus_CUSTOM = {}
Template_A2S_Zeus_CUSTOM = {}
Template_A2A_Zeus_CUSTOM = {}
Template_A2A_Helo_Zeus_CUSTOM = {}

randInit = math.random(1,100000)

A2A_HELO_ZEUS = SPAWN:NewWithAlias( "A2A_Spawn_Init_HELO_ZEUS", "A2A_Spawn_Init_HELO_ZEUS" )
	:InitRandomizeTemplate( Template_A2A_Helo_Zeus )
	
A2A_ZEUS = SPAWN:New("A2A_Spawn_Init_ZEUS")
	:InitRandomizeTemplate( Template_A2A_Zeus )

A2G_ZEUS = SPAWN:NewWithAlias("A2G_Init", "A2G_Spawn_Init_ZEUS_"..randInit)
	:InitRandomizeTemplate( Template_A2G_Zeus )
	:InitHeading(0, 360)
	
A2G_ZEUS_CUSTOM = SPAWN:NewWithAlias("A2G_Init", "A2G_Spawn_Init_ZEUS_CUSTOM")
	:InitRandomizeTemplate( Template_A2G_Zeus_CUSTOM )
	
A2S_ZEUS_CUSTOM = SPAWN:NewWithAlias("A2G_Init", "A2S_Spawn_Init_ZEUS_CUSTOM")
	:InitRandomizeTemplate( Template_A2S_Zeus_CUSTOM )
	

--]]
function clearTable(tableToClear)
    for k in pairs(tableToClear) do
        tableToClear[k] = nil
    end
end

function handleSpawnRequest(text, coord)

    local zeusSpawn = nil
    local zeusSpawnAir = nil
    local zeusSpawnAirHelo = nil
	--RED
    if 	text:find("_aa_") or 
			text:find("_ua_") or 
			text:find("_ar_") or  
			text:find("_arty_") or  
			text:find("_inf_") or  
			text:find("_ship_") or
			text:find("_fort_") or
			text:find("_sub_") then
		zeusSpawn = zeus_ground
		table.insert(Template_A2G_Zeus,tostring(text:gsub("-create ","")))
		A2G_ZEUS:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	end):SpawnFromVec3(coord:SetAltitude(spawnAltitude, true))
		clearTable(Template_A2G_Zeus)

	elseif text:find("_cap_") or
			text:find("_antiship_") or
			text:find("_bombing_") then
		table.insert(Template_A2A_Zeus,tostring(text:gsub("-create ","")))
		A2A_ZEUS:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	end):SpawnFromVec3(coord:SetAltitude(spawnAltitude, true))
		clearTable(Template_A2A_Zeus)


	elseif text:find("_helo_") then
		zeusSpawnAirHelo = zeus_helo
		table.insert(Template_A2A_Helo_Zeus,tostring(text:gsub("-create ","")))
		A2A_HELO_ZEUS:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	end):SpawnFromVec3(coord:SetAltitude(3000, true))
		clearTable(Template_A2A_Helo_Zeus)
		
    elseif 	text:find("custom_ground") then
		zeusSpawn = zeus_ground
		table.insert(Template_A2G_Zeus_CUSTOM,tostring(text:gsub("-create ","")))
		A2G_ZEUS_CUSTOM:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	end):SpawnFromVec3(coord:SetAltitude(spawnAltitude, true))
		clearTable(Template_A2G_Zeus_CUSTOM)
		
    elseif 	text:find("custom_sea") then
		zeusSpawn = zeus_ground
		table.insert(Template_A2S_Zeus_CUSTOM,tostring(text:gsub("-create ","")))
		A2S_ZEUS_CUSTOM:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	end):SpawnFromVec3(coord:SetAltitude(spawnAltitude, true))
		clearTable(Template_A2S_Zeus_CUSTOM)

	elseif text:find("custom_air")  then
		table.insert(Template_A2A_Zeus_CUSTOM,tostring(text:gsub("-create ","")))
		A2A_ZEUS_CUSTOM:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	end):SpawnFromVec3(coord:SetAltitude(spawnAltitude, true))
		clearTable(Template_A2A_Zeus_CUSTOM)


	elseif text:find("custom_helo") then
		zeusSpawnAirHelo = zeus_helo
		table.insert(Template_A2A_Helo_Zeus_CUSTOM,tostring(text:gsub("-create ","")))
		A2A_HELO_ZEUS_CUSTOM:OnSpawnGroup(
    function(SpawnGroup)
	env.info( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.")
	trigger.action.outText( "" .. text:gsub("-create ","") .. " on MAP MARKER succesfully CREATED.", 10)
	    OrbitTask=SpawnGroup:TaskOrbitCircle(tti_config_jtac_altitude,80)
		SpawnGroup:SetTask(OrbitTask,1)
	end):SpawnFromVec3(coord:SetAltitude(3000, true))
	--end):SpawnFromCoordinate( coord:SetAltitude(tti_config_jtac_altitude, true))
		clearTable(Template_A2A_Helo_Zeus_CUSTOM)
--[[		
	elseif text:find("custom_ground_group_1") then
		zeusSpawnGroundCustom = custom_ground_group_1
		zeusSpawnGroundCustom:SpawnFromVec3(coord)
	elseif text:find("custom_ground_group_2") then
		zeusSpawnGroundCustom = custom_ground_group_2
		zeusSpawnGroundCustom:SpawnFromVec3(coord)
	elseif text:find("custom_ground_group_3") then
		zeusSpawnGroundCustom = custom_ground_group_3
		zeusSpawnGroundCustom:SpawnFromVec3(coord)
--]]
	elseif text:find("jtac") then
	--[[
	JTAC_ZEUS = JTAC_MQ_ZEUS:SpawnFromVec3(coord)
	JTAC_ZEUS_NAME = JTAC_ZEUS:GetName()
	JTACAutoLase(JTAC_ZEUS_NAME, 1685, true, "all")
	trigger.action.outText ( "JTAC:  ".. JTAC_ZEUS_NAME .." on station lasing 1685. \nNOTE: If you wish to delete Zeus-spawned JTACS use the map marker command -delete jtac", 60)
	env.info("JTAC:  ".. JTAC_ZEUS_NAME .."  spawned!")
	]]
	
	JTAC_ZEUS = JTAC_MQ_ZEUS:OnSpawnGroup(
    function(SpawnGroup)
        OrbitTask=SpawnGroup:TaskOrbitCircle(tti_config_jtac_altitude,80)
		SpawnGroup:SetTask(OrbitTask,1)
        SpawnGroup:SetCommand(tti_config_SetInvisible)
        SpawnGroup:SetCommand(tti_config_SetImmortal)
		SpawnGroup:CommandEPLRS(true)
		SpawnGroup:OptionRTBBingoFuel(false)
		SpawnGroup:OptionROTNoReaction()
		SpawnGroup:SetOption(AI.Option.Air.id.SILENCE, true)
        end):SpawnFromCoordinate( coord:SetAltitude(tti_config_jtac_altitude, true))
		JTAC_ZEUS_NAME = JTAC_ZEUS:GetName()
		JTACAutoLase(JTAC_ZEUS_NAME, jtac_laser_code, jtac_smoke_targets, "all")
		trigger.action.outText ( "JTAC:  ".. JTAC_ZEUS_NAME .." on station lasing "..jtac_laser_code.."\nNOTE: If you wish to delete Zeus-spawned JTACS use the map marker command -delete jtac", 60)
	end
	trigger.action.outSound("TTI Soundfiles/BD_00007 single beep.ogg" )
end

function handleDebugRequest(text, coord)

end

local destroyZoneCount = 0
function handleDestroyRequest(text, coord)
    local destroyZoneName = string.format("destroy %d", destroyZoneCount)
    local zoneRadiusToDestroy = ZONE_RADIUS:New(destroyZoneName, coord:GetVec2(), 1000)
    destroyZoneCount = destroyZoneCount + 1
	trigger.action.outText("UNIT(S) on your MAP MARKER succesfully DESTROYED.", 10)
    local function destroyUnit(unit)
        unit:Destroy()
        return true
    end

	if Convoy1_alive == true then
		Convoy1spawn:OnEventDead()
	end
	if Convoy2_alive == true then
		Convoy2spawn:OnEventDead()
	end
	if Convoy3_alive == true then
		Convoy3spawn:OnEventDead()
	end
    zoneRadiusToDestroy:SearchZone( destroyUnit , Object.Category.UNIT)
	
	timer.scheduleFunction(function()
	main_detection(15)
	tti.debug("Zeus destroy command initiated starting main detection...")
	end, nil, timer.getTime() + 5  )
	
end

function handleDeleteJtacRequest()
	Group.getByName(JTAC_ZEUS_NAME):destroy()
	trigger.action.outText("ZEUS JTAC:  ".. JTAC_ZEUS_NAME .." deleted", 60)
end

function handleNukeRequest(text, coord)
	local destroyZoneName = string.format("destroy %d", destroyZoneCount)
	local zoneRadiusToDestroy = ZONE_RADIUS:New(destroyZoneName, coord:GetVec2(), 8050)
	destroyZoneCount = destroyZoneCount + 1

	local function destroyUnit(unit)
		if unit:GetTypeName() ~= "RQ-1A Predator" then
			unit:Destroy()
			return true
		end
	end
	
	if Convoy1_alive == true then
		Convoy1spawn:OnEventDead()
	end
	if Convoy2_alive == true then
		Convoy2spawn:OnEventDead()
	end
	if Convoy3_alive == true then
		Convoy3spawn:OnEventDead()
	end
	

	zoneRadiusToDestroy:SearchZone( destroyUnit , Object.Category.UNIT)
	
	timer.scheduleFunction(function()
	main_detection(15)
	tti.debug("Zeus destroy command initiated starting main detection...")
	end, nil, timer.getTime() + 5  )
end

function SmokeHandler (vec3_point, color)
	local Smoke = COORDINATE:NewFromVec3(vec3_point)
	local colorName
	if (color == "b") then
		Smoke:SmokeBlue()
		colorName = "Blue"
	elseif (color == "r") then
		Smoke:SmokeRed()
		colorName = "Red"
	elseif (color == "g") then
		Smoke:SmokeGreen()
		colorName = "Green"
	elseif (color == "w") then
		Smoke:SmokeWhite()
		colorName = "White"
	elseif (color == "o") then
		Smoke:SmokeOrange()
		colorName = "Orange"
	end
	trigger.action.outText(string.upper(colorName) .. " smoke marker created on MAP MARKER", 10)
	trigger.action.outSound("TTI Soundfiles/BD_00007 single beep.ogg" )
end

function handleSmokeRequest(text, coord)
	if text:find("red")  then
			SmokeHandler(coord, "r")
		elseif text:find("green")  then
			SmokeHandler(coord, "g")
		elseif text:find("blue")  then
			SmokeHandler(coord, "b")
		elseif text:find("orange")  then
			SmokeHandler(coord, "o")
		elseif  text:find("white")  then
			SmokeHandler(coord, "w")
		else
			SmokeHandler(coord, "w")
		end
end


--Spawns flares at a designated vec passed from Zeus.
function flareHandler (coord, color)
	local colorName
	local Flare = COORDINATE:NewFromVec3(coord)
	if (color == "r") then
				colorName = "Red"
		SCHEDULER:New( nil,
			function()
				Flare:FlareRed()
			end,
		{ }, 0, 3, 0, 15)

	elseif (color == "g") then
				colorName = "Green"
		SCHEDULER:New( nil,
			function()
				Flare:FlareGreen()
			end,
		{ }, 0, 3, 0, 15)
	elseif (color == "y") then
				colorName = "Yellow"
		SCHEDULER:New( nil,
			function()
				Flare:FlareYellow()
			end,
		{ }, 0, 3, 0, 15)
	elseif (color == "w") then
				colorName = "White"
		SCHEDULER:New( nil,
			function()
				Flare:FlareWhite()
			end,
		{ }, 0, 3, 0, 15)	end
		trigger.action.outText("Launching " .. string.upper(colorName) .. " flare markers on MAP MARKER", 10)
		trigger.action.outSound("TTI Soundfiles/BD_00007 single beep.ogg" )
end

function handleFlareRequest(text, coord)
	if text:find("red")  then
			flareHandler(coord, "r")
		elseif text:find("green")  then
			flareHandler(coord, "g")
		elseif  text:find("yellow")  then
			flareHandler(coord, "y")
		elseif  text:find("white")  then
			flareHandler(coord, "w")
		else
			flareHandler(coord, "r")
	end
end


--Fires 5 illumination flares into the air.
function handleIllumRequest(coord)
	local altitude = 900 --Meters ofc.
	for i = 1, 5 do
		local LightZone = ZONE_RADIUS:New("_zoneOfLight", coord:GetVec2(), math.random(500,2000))
		local point = LightZone:GetRandomVec3()
		trigger.action.illuminationBomb({x= point.x, y = altitude, z = point.z} , 1000000 )
	end
	trigger.action.outText("Lighting up the area with illumination rounds created on MAP MARKER", 10)
	trigger.action.outSound("TTI Soundfiles/BD_00007 single beep.ogg" )
end

function markRemoved(Event)
	--if Event.text~=nil and Event.text:lower():find("-") then -- this forced - to be used
    if Event.text~=nil then 
        local text = Event.text:lower()
		--local vec3 = {y=Event.pos.y, x=Event.pos.z, z=Event.pos.x}
		--local vec3 = {x=Event.pos.z, z=Event.pos.x}
		local ParticleVec3 = {z=Event.pos.z, x=Event.pos.x, y=land.getHeight({x=Event.pos.x,y=Event.pos.z})}
		--local vec3_coord = COORDINATE:NewFromVec3(vec3)
        local vec3 = {z=Event.pos.z, x=Event.pos.x}
        local coord = COORDINATE:NewFromVec3(vec3)
		--local coord = COORDINATE:NewFromVec3(vec3)
		--coord.y = coord:GetLandHeight()
		--coord.y = coord:SetAltitude()
        if Event.text:lower():find("-create") then
				handleSpawnRequest(text, coord)
			elseif Event.text:lower():find("-debug") then
				handleDebugRequest(text, coord) 
			elseif Event.text:lower():find("-destroy") then
				handleDestroyRequest(text, coord)
			elseif Event.text:lower():find("-delete jtac") then
				handleDeleteJtacRequest()
			elseif Event.text:lower():find("-nuke") then
				handleNukeRequest(text, coord)
			elseif Event.text:lower():find("-smoke") then
				handleSmokeRequest(text, coord)
			elseif Event.text:lower():find("-flare") then
				handleFlareRequest(text, coord)
			elseif Event.text:lower():find("-illum") or Event.text:lower():find("-light") then
				handleIllumRequest(coord)
			--troop transport script
			elseif Event.text:find("-drop troops here") or Event.text:lower():find("drop troops here") then
				zeus_transport_handler(coord)
        end
	end
end
	


function SupportHandler:onEvent(Event)
    if Event.id == world.event.S_EVENT_MARK_ADDED then
        -- env.info(string.format("BTI: Support got event ADDED id %s idx %s coalition %s group %s text %s", Event.id, Event.idx, Event.coalition, Event.groupID, Event.text))
    elseif Event.id == world.event.S_EVENT_MARK_CHANGE then
        -- env.info(string.format("BTI: Support got event CHANGE id %s idx %s coalition %s group %s text %s", Event.id, Event.idx, Event.coalition, Event.groupID, Event.text))
    elseif Event.id == world.event.S_EVENT_MARK_REMOVED then
        -- env.info(string.format("BTI: Support got event REMOVED id %s idx %s coalition %s group %s text %s", Event.id, Event.idx, Event.coalition, Event.groupID, Event.text))
        markRemoved(Event)
    end
end

world.addEventHandler(SupportHandler)

env.info('TTI: Beyond Support is online')
--trigger.action.outText("zeus markers LUA File Loaded...", 10)
tti_zeus_script_loaded = true