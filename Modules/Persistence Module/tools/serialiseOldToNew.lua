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

function betterSerialize(tableToSerialize, tableName)

  --tableToSerialize should be a table, and is the table that will be serialized to JSON.
  --tableName should be a string, and will be the name of the table that is saved in JSON, and ultimately the variable name of the table when loaded back into lua

    serializedTable = net.lua2json(tableToSerialize)
    serializedTableFixQuotes = string.gsub(serializedTable, "\"", "\\\"")
    jsonReadyToWrite = tableName .. " = net.json2lua(\"" .. serializedTableFixQuotes .. "\")"
    return jsonReadyToWrite

end

dofile(fileToConvert)
writeStr = betterSerialize(stockpile_static, "stockpile_static") --change this manually to the imported table as the first variable, and the table name in the file as the second variable as a string.
writetofile(writeStr, outputFile)