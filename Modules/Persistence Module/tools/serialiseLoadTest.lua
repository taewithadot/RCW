  SaveUnits = {}
  trigger.action.outText("About to do the thing", 10)

  dofile("NDMB-Persistence-Units-Test.lua")
  
  trigger.action.outText("Did the thing", 10)
  tempTable={}
  Spawn={}


  trigger.action.outText(tostring(SaveUnits), 10)


--RUN THROUGH THE KEYS IN THE TABLE (GROUPS)
  for k,v in pairs(SaveUnits) do
    units={}
    trigger.action.outText("Started the big thing", 10)
--RUN THROUGH THE UNITS IN EACH GROUP
      for i= 1, #(SaveUnits[k]["units"]) do 
  
      trigger.action.outText("k: " .. k, 10)

      end

  end