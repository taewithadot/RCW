# NDMB
Neko Dynamic Mission Base (NDMB) is a collection of script "modules" for DCS World created by members of the Neko PMC DCS community.

These scripts are designed to be modular components that can be dropped into any DCS World mission in order to add new features and functionality that would not normally be possible in the simulator. 

Please note that some of these scripts are to be used in conjunction with proprietary/private software and code also created solely for use by the Neko PMC community. This repository is not designed to offer maximum convenience to entities outside of Neko PMC. That said, anyone is welcome to use these scripts in part or in whole for their own endeavours, and we will make efforts not to obstruct or deliberately obfuscate or disable otherwise perfectly operational scripts.

As with nearly all scripts that generate or enable persistence in DCS World you will need to allow the scripting engine to read/write data in order to run most of these scripts, which can be done by commenting out the last two sanitizeModule lines in [DCS Install Dir]/Scripts/MissionScripting.lua.

If you have any questions regarding this repository please join the Neko PMC Discord where you are welcome to ask questions: https://discord.gg/2DvxuKfMdM

Plase find below a list of modules that make up NDMB and their purpose.

# Persistence Module

The NDMB Persistence Module saves the state of all ground units and static objects in the mission. This allows a DCS server/session to be stopped and started and continued from where it was.

# Air Patrol Module

The NDMB Air Patrol Module generates air patrols and traffic for both coalitions based on the airbases owned by each coalition. This allows for a dynamic air situation based on the current territory control.

# Ground Combat Module

The NDMB Ground Combat Module allows for dynamic spawning of ground units at designated trigger zones or markers. This module is still in a "design" stage and its purpose and goals are yet to be finalised.

# Armament Module

The NDMB Armament Module allows for player armament and weapons loadouts to become persistent, operating from a weapons stockpile that can be either manually controlled or automatically updated by external sources. When players take off from airfields, the weapons on their aircraft are subtracted from stockpiles, and when they land, any remaining weapons are returned to the same stockpiles.

# Weather Module

The NDMB Weather Module allows for weather to be generated at mission runtime instead of being a static definition inside the mission. Note that this module may rely mostly/solely on external code and may not contain much of anything, it is purely here for reference purposes and may be removed at a later date.
