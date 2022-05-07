--This script converts "old" serialisation data over to the new JSON type, which is new in 2.7.6 and likely much more efficient than the bloated function/method we have been using until now.
--
--The new serialisation method requires that files be in this format, so any existing/important data can be sent through this script to be converted to the new serialisation method.

fileToConvert = "stockpile_static.lua"
outputFile = "stockpile_static_new.lua"





function writetofile(data, file)--Function for saving to file (commonly found)
  File = io.open(file, "w")
  File:write(data)
  File:close()
end

function convertLuaToJSON(file)

	luaTableInput = {}
	luaTableInput = dofile(file)

	luaTableOutput = net.lua2json(luaTableInput)

	jsonReadyToWrite = "net.json2lua(" .. luaTableOutput .. ")"

	writetofile(jsonReadyToWrite,outputFile)

end



convertLuaToJSON(fileToConvert)