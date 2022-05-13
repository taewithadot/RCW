--[[
need load in airfield matrix

then i need to like check what coalition owns each airfield

then i need to figure out where there are adjacent opposing coalitions between two airfields

then i can spawn flights of shit from there

wow cool

]]--

caucasusMatrix = {}

caucasusMatrix["Batumi"] = {"Kobuleti"}
caucasusMatrix["Kobuleti"] = {"Batumi", "Senaki-Kolkhi", "Kutaisi"}
caucasusMatrix["Kutaisi"] = {"Kobuleti", "Senaki-Kolkhi"}
caucasusMatrix["Senaki-Kolkhi"] = {"Kutaisi", "Kobuleti", "Sukhumi-Babushara"}
caucasusMatrix["Sukhumi-Babushara"] = {"Senaki-Kolkhi", "Gudauta"}
caucasusMatrix["Gudauta"] = {"Sukhumi-Babushara", "Sochi-Adler"}
caucasusMatrix["Sochi-Adler"] = {"Gudauta", "Gelendzhik"}
caucasusMatrix["Gelendzhik"] = {"Sochi-Adler", "Novorossiysk", "Krymsk"}
caucasusMatrix["Novorossiysk"] = {"Gelendzhik", "Anapa-Vityazevo", "Krymsk"}
caucasusMatrix["Anapa-Vityazevo"] = {"Krymsk", "Novorossiysk"}
caucasusMatrix["Krymsk"] = {"Anapa-Vityazevo", "Novorossiysk", "Gelendzhik"}
caucasusMatrix["Krasnodar-Center"] = {"Krymsk", "Krasnodar-Pashkovsky"}
caucasusMatrix["Krasnodar-Pashkovsky"] = {"Krasnodar-Center", "Maykop-Khanskaya"}
caucasusMatrix["Maykop-Khanskaya"] = {"Krasnodar-Pashkovsky", "Mineralnye Vody"}
caucasusMatrix["Mineralnye Vody"] = {"Maykop-Khanskaya", "Nalchik", "Mozdok"}
caucasusMatrix["Nalchik"] = {"Mineralnye Vody", "Mozdok", "Beslan"}
caucasusMatrix["Mozdok"] = {"Mineralnye Vody", "Nalchik", "Beslan"}
caucasusMatrix["Beslan"] = {"Nalchik", "Mozdok", "Tbilisi-Lochini"}
caucasusMatrix["Tbilisi-Lochini"] = {"Beslan", "Soganlug", "Vaziani", "Kutaisi"}
caucasusMatrix["Soganlug"] = {"Vaziani", "Tbilisi-Lochini"}
caucasusMatrix["Vaziani"] = {"Soganlug", "Tbilisi-Lochini"}



function checkAirbaseOwnership(airbase)

	airbaseToCheck = Airbase.getbyName()
	return Airbase.getByName(airbase):getCoalition()

end

--for each airbase in the matrix, check the coalition, and then check the coalition of each neighbour. if mismatch, spawn a CAP group.