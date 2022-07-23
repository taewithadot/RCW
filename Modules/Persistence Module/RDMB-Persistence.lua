--Credit to Pikey, Speed & Grimes for their work on Serialising tables, included below, FlightControl for MOOSE (Required), Ghostrider+Moose community for fixing Radians instead of degrees
--The RDMB Persistence Module is a modified version of Pikey's Simple Group Saving and Simple Static Saving scripts.
--https://github.com/thebgpikester/SimpleGroupSaving
--https://github.com/thebgpikester/SimpleStaticSaving
 
--Edit 'SaveScheduleUnits' and 'SaveScheduleStatics' to change duration between scheduled saves


--CURRENT LIMITATIONS
--Naval Groups not Saved. If Included, there may be issues with spawned objects and Client slots where Ships have slots for aircraft/helo. 
--Possible if not a factor, or we can code in conditional ignore / whitelist for certain naval units in a later version

 -----------------------------------

SaveScheduleUnits=10 --how many seconds between each check of all the units.
SaveScheduleStatics=10 --how many seconds between each check of all the statics.


shipWhitelist = {}

shipWhitelist = { --list of carriers to ignore as they may have spawn points on them and deleting them can cause serious problems.

"CVN_71",
"CVN_72",
"CVN_73",
"Stennis",
"Forrestal",
"LHA_Tarawa",
"KUZNECOW",
"CV_1143_5",

}
 -----------------------------------
 
function betterSerialize(tableToSerialize, tableName)

  --tableToSerialize should be a table, and is the table that will be serialized to JSON.
  --tableName should be a string, and will be the name of the table that is saved in JSON, and ultimately the variable name of the table when loaded back into lua

    serializedTable = net.lua2json(tableToSerialize)
    serializedTableFixQuotes = string.gsub(serializedTable, "\"", "\\\"")
    jsonReadyToWrite = tableName .. " = net.json2lua(\"" .. serializedTableFixQuotes .. "\")"
    return jsonReadyToWrite

end


--[[ OLD SERIALIZE CODE
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
--]]

function file_exists(name) --check if the file already exists for writing
  if lfs.attributes(name) then
  return true
  else
  return false end 
end

function writetofile(data, file)--Function for saving to file (commonly found)
  File = io.open(file, "w")
  File:write(data)
  File:close()
end

function Alive(static)
  if static:IsAlive() then return false else return true end 
end

function rng()
  local roll = math.random(1,100)
  return roll
end

function rngsmokes(coordinate)
  smokes={coordinate:BigSmokeMedium(0.1),coordinate:BigSmokeMedium(0.2),coordinate:BigSmokeMedium(0.3),coordinate:BigSmokeMedium(0.2), coordinate:BigSmokeMedium(0.5), coordinate:BigSmokeMedium(0.8),coordinate:BigSmokeLarge(0.1),coordinate:BigSmokeHuge(0.1),}
  if rng() > 95 then
    smoke = smokes[math.random(1,#smokes)]
  else
  end
end


--SCRIPT START
trigger.action.outText("RDMB Persistence Module v1.00 Loaded!", 5)

--UNITS

if file_exists("RDMB-Persistence-Units.lua") then --Script has been run before, so we need to load the save
  env.info("Unit database exists, loading from file..")
  AllGroups = SET_GROUP:New():FilterCategories({"ground","ship"}):FilterActive(true):FilterStart()
    AllGroups:ForEachGroup(function (grp)

      local DCSgroup = Group.getByName(grp:GetName() )
      local size = DCSgroup:getSize()
      local ignore = false

      for i = 1, size do

        for _, v in pairs(shipWhitelist) do
          if v == grp:GetUnit(i):GetTypeName() then
            ignore = true
          end
        end

      end

      if ignore == false then
      
--        grp:Destroy()

      end


      end)

  --dofile("RDMB-Persistence-Units.lua")
  SaveUnits = {}

  dofile("RDMB-Persistence-Units.lua")
  tempTable={}
  Spawn={}
--RUN THROUGH THE KEYS IN THE TABLE (GROUPS)
  for k,v in pairs(SaveUnits) do
    units={}
--RUN THROUGH THE UNITS IN EACH GROUP
      for i= 1, #(SaveUnits[k]["units"]) do 

tempTable =

  { 
   ["type"]=SaveUnits[k]["units"][i]["type"],
   ["transportable"]= {["randomTransportable"] = false,}, 
   --["unitId"]=9000,used to generate ID's here but no longer doing that since DCS seems to handle it
   ["skill"]=SaveUnits[k]["units"][i]["skill"],
   ["y"]=SaveUnits[k]["units"][i]["y"] ,
   ["x"]=SaveUnits[k]["units"][i]["x"] ,
   ["name"]=SaveUnits[k]["units"][i]["name"],
   ["heading"]=SaveUnits[k]["units"][i]["heading"],
   ["playerCanDrive"]=true,  --hardcoded but easily changed.  
  }

      table.insert(units,tempTable)
    end --end unit for loop


groupData = 

  {
    ["visible"] = true,
    --["lateActivation"] = false,
    ["tasks"] = {}, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    --["taskSelected"] = true,
    --["route"] = 
    --{ 
    --["spans"] = {},
    --["points"]= {}
    -- },-- end of ["spans"] 
    --["groupId"] = 9000 + _count,
    ["hidden"] = false,
    ["units"] = units,
    ["y"] = SaveUnits[k]["y"],
    ["x"] = SaveUnits[k]["x"],
    ["name"] = SaveUnits[k]["name"],
    --["start_time"] = 0,
  } 

  coalition.addGroup(SaveUnits[k]["CountryID"], SaveUnits[k]["CategoryID"], groupData)
  groupData = {}
  end --end Group for loop

else --Save File does not exist we start a fresh table, no spawns needed
  SaveUnits={}
  AllGroups = SET_GROUP:New():FilterCategories({"ground","ship"}):FilterActive(true):FilterStart()
end

--STATICS

 mismatch=0 --counter for objects in file and in table differences

if file_exists("RDMB-Persistence-Statics.lua") then
  env.info("Statics database exists, loading from file..")
  --dofile("RDMB-Persistence-Statics.lua")
  SaveStatics = {}
  SaveStatics = {dofile("RDMB-Persistence-Statics.lua")}

  AllStatics = SET_STATIC:New():FilterStart()

  AllStatics:ForEach(function (stat)
  local _name = stat:GetName()
  if AIRBASE:FindByName(_name) ~= nil or stat:GetDesc() == nil then
   -- env.info(_name.." is a type of airbase, ignoring")
  elseif SaveStatics[_name] == nil then
    --this object was added to the mission since save
    mismatch=mismatch+1  
  elseif SaveStatics[_name]["dead"] == true then
 
    stat:Destroy()
    
-- to not replace models with dead models, delete from here 
  local tempTable = 
  {
    ["heading"] = SaveStatics[_name]["heading"],
    ["heading"] = SaveStatics[_name]["heading"],
    ["shape_name"] = SaveStatics[_name]["shape_name"],
    ["type"] = SaveStatics[_name]["type"],
    ["unitId"] = SaveStatics[_name]["unitId"],
    ["rate"] = 20,
    ["name"] = _name,
    ["category"] = SaveStatics[_name]["category"],
    ["y"] = SaveStatics[_name]["y"], 
    ["x"] = SaveStatics[_name]["x"], 
    ["dead"] = true,
    ["Country"] = SaveStatics[_name]["Country"],
  }

  coalition.addStaticObject(SaveStatics[_name]["Country"], tempTable) --SaveStatics[k]["Country"]
--  local boompos = stat.GetVec3()
--  trigger.action.explosion(boompos, 200)
--to here. Note this will produce an error in moose because it doesn't like adding a dead static to the database.
  end
  end)

else --Save File does not exist we start a fresh table
  SaveStatics={}
  AllStatics = SET_STATIC:New():FilterStart()
end
if mismatch > 0 then
  env.error("IMPORTANT - you have ".. mismatch .." new items in your save file since the last time. Suggest you recreate it")
end


function unitSave()

  AllGroups:ForEachGroupAlive(function (grp)
    local DCSgroup = Group.getByName(grp:GetName() )
    local size = DCSgroup:getSize()
    local ignore = false

    _unittable={}


    for i = 1, size do

      for _, v in pairs(shipWhitelist) do
        if v == grp:GetUnit(i):GetTypeName() then
          ignore = true
        end
      end

    end

    if ignore == false then

      for i = 1, size do

        local tmpTable =

        {   
          ["type"]=grp:GetUnit(i):GetTypeName(),
          ["transportable"]=true,
          ["unitID"]=grp:GetUnit(i):GetID(),
          ["skill"]="Average",
          ["y"]=grp:GetUnit(i):GetVec2().y,
          ["x"]=grp:GetUnit(i):GetVec2().x,
          ["name"]=grp:GetUnit(i):GetName(),
          ["playerCanDrive"]=true,
          ["heading"]=math.rad(grp:GetUnit(i):GetHeading()), --fixed 24/03/2020
        }

        table.insert(_unittable,tmpTable) --add units to a temporary table
      end

      SaveUnits[grp:GetName()] =
      {
        ["CountryID"]=grp:GetCountry(),
        ["SpawnCoalitionID"]=grp:GetCountry(),
        ["tasks"]={}, 
        ["CategoryID"]=grp:GetCategory(),
        ["task"]="Ground Nothing",
        ["route"]={}, 
        ["groupId"]=grp:GetID(),
        ["units"]= _unittable,
        ["y"]=grp:GetVec2().y, 
        ["x"]=grp:GetVec2().x,
        ["name"]=grp:GetName(),
        ["start_time"]=0,
        ["CoalitionID"]=grp:GetCoalition(),
        ["SpawnCountryID"]=grp:GetCoalition(),
      }

    end

  end)

  newMissionStr = betterSerialize(SaveUnits, "SaveUnits") --save the Table as a serialised type with key SaveUnits
  writetofile(newMissionStr, "RDMB-Persistence-Units.lua")--write the file from the above to SaveUnits.lua
  SaveUnits={}--clear the table for a new write.

  timer.scheduleFunction(function() 
    unitSave()
    end, nil, timer.getTime() + SaveScheduleUnits  )

end

function staticSave()
  AllStatics:ForEach(function (grp)
    local _name = grp:GetName()
    if AIRBASE:FindByName(_name) ~= nil or grp:GetDesc() == nil then --excludes all static types that will error it
      else

      SaveStatics[grp:GetName()] =

      {
        ["heading"] = grp:GetHeading(),
        ["groupId"] =grp:GetID(),
        ["shape_name"] = grp:GetTypeName(),
        ["type"] = grp:GetTypeName(),
        ["unitId"] = grp:GetID(),
        ["rate"] = 20,
        ["name"] = grp:GetName(),
        ["category"] = grp:GetCategoryName(),
        ["y"] = grp:GetVec2().y, 
        ["x"] = grp:GetVec2().x, 
        ["dead"] = Alive(grp),
        ["Country"] = grp:GetCountry()
      }
    end

    end)

  local newMissionStr = betterSerialize(SaveStatics, "SaveStatics")
  writetofile(newMissionStr, "RDMB-Persistence-Statics.lua")
  SaveStatics={} 

  timer.scheduleFunction(function() 
    staticSave()
    end, nil, timer.getTime() + SaveScheduleStatics  )

end

unitSave()
staticSave()
