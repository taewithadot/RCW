--Small debug script to check and print the weapons equipped on an aircraft
--Modified from Grimes comment in thread: https://forum.dcs.world/topic/279044-request-check-restricted-loadout-script-example/

UnitName = "WeaponCheck"

local ammo = Unit.getByName(UnitName):getAmmo()
for i = 1, #ammo do
   	trigger.action.outText("Unit has " .. ammo[i].count .. " of weapon type " .. ammo[i].desc.typeName, 15)
end 