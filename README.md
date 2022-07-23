# Ravenspear Dynamic Mission Base (RDMB)
Ravenspear Dynamic Mission Base (RDMB) is a collection of scripting "modules" for DCS World created by members of the Ravenspear Tactical Solutions DCS community.

These scripts are designed to be modular components that can be dropped into any DCS World mission in order to add new features and functionality to DCS that would not normally be possible. This is accomplished using MOOSE, serialising data and writing it to disk, along with external software that operates alongside and interacts with these RDMB scripts.

Please note that some of these scripts are to be used in conjunction with proprietary/private software and code also created solely for use by the Ravenspear Tactical Solutions community. This repo is not designed to offer maximum convenience to entities outside of Ravenspear. That said, anyone is welcome to use this repo in part or in whole for their own endeavours, and we will make efforts not to obstruct or deliberately obfuscate or disable otherwise perfectly operational scripts.

As with nearly all scripts that generate or enable persistence in DCS World you will need to allow the scripting engine to read/write data in order to run most of these scripts, which can be done by commenting out the last two sanitizeModule lines in [DCS Install Dir]/Scripts/MissionScripting.lua.

If you have any questions regarding this repository please join the Ravenspear Discord where you are welcome to ask questions: https://discord.gg/2DvxuKfMdM

Please find below a list of modules that make up RDMB and their purpose. These are listed in order of priority of importance/development. This project is still in a very early stage, and the RDMB miz file still needs a lot of work.

# Persistence Module

The RDMB Persistence Module saves the state of all ground units, ships and static objects in the mission. This allows a DCS server/session to be stopped and started and continued from where it was. The current version of this module only supports the saving of ground units and ships. Ships to be skipped can be added into the shipWhitelist at the top of the file. This should be used if there are ships with slots on them (eg. carrier Tomcat slots) or serious issues will occur as ships with slots cannot be respawned.

Development Status: Ground & naval unit saving completed, static saving under development.

# Air Combat Module

The RDMB Air Combat Module is responsible for generating air patrols and strikes based on the airbases owned by each coalition. This allows for a dynamic air situation based on the current territory control. 

Development Status: Enemy patrols spawn from a pre-defined pool based on friendly trespass into static incursion zones.

# Armament Module

The RDMB Armament Module allows for player armament and weapons loadouts to become persistent, operating from a weapons stockpile that can be either manually controlled or automatically updated by external sources. When players take off from airfields, the weapons on their aircraft are subtracted from stockpiles, and when they land, any remaining weapons are returned to the same stockpiles. If players take off with an invalid loadout, they are warned and given time to land, and if they continue to fly with the invalid loadout they are destroyed.

Development Status: Full functionality on a single stockpile file, can be used to limit armament for an operation.

# Ground Combat Module

The RDMB Ground Combat Module allows for dynamic spawning of ground units by a game master using marker commands. In the future, it may be overhauled to allow for hands-off dynamic ground unit spawning based on territory/airbase control. This will allow for a dynamic ground situation based on the current territory control.

Development Status: Completed

# Credits

RDMB uses several functions from the MOOSE scripting framework: https://github.com/FlightControl-Master/MOOSE

Credit to Pikey for his Simple Group Saving and Simple Static Saving scripts, which were modified for this project: https://github.com/thebgpikester/SimpleGroupSaving

Credit to deadlyfishes/TTI dev team for their "ZEUS" marker script: https://throughtheinferno.com/

https://github.com/thebgpikester/SimpleStaticSaving
