# NDMB
Neko Dynamic Mission Base (NDMB) is a collection of scripting "modules" for DCS World created by members of the Neko PMC DCS community.

These scripts are designed to be modular components that can be dropped into any DCS World mission in order to add new features and functionality to DCS that would not normally be possible. This is accomplished using a mixture of MOOSE, SLMOD and external software alongside these NDMB scripts.

Please note that some of these scripts are to be used in conjunction with proprietary/private software and code also created solely for use by the Neko PMC community. This repo is not designed to offer maximum convenience to entities outside of Neko PMC. That said, anyone is welcome to use this repo in part or in whole for their own endeavours, and we will make efforts not to obstruct or deliberately obfuscate or disable otherwise perfectly operational scripts.

As with nearly all scripts that generate or enable persistence in DCS World you will need to allow the scripting engine to read/write data in order to run most of these scripts, which can be done by commenting out the last two sanitizeModule lines in [DCS Install Dir]/Scripts/MissionScripting.lua.

If you have any questions regarding this repository please join the Neko PMC Discord where you are welcome to ask questions: https://discord.gg/2DvxuKfMdM

Plase find below a list of modules that make up NDMB and their purpose. These are listed in order of priority of importance/development. This project is still in early stages and as such there are no "complete" modules yet.

# Persistence Module

The NDMB Persistence Module saves the state of all ground units, ships and static objects in the mission. This allows a DCS server/session to be stopped and started and continued from where it was. The current version of this module only supports the saving of ground units and ships. Ships to be skipped can be added into the shipWhitelist at the top of the file. This should be used if there are ships with slots on them (eg. carrier Tomcat slots) or serious issues will occur as ships with slots cannot be respawned.

# Air Combat Module

The NDMB Air Combat Module will generate air patrols, traffic and eventually strikes for both coalitions based on the airbases owned by each coalition. This will allow for a dynamic air situation based on the current territory control. This module will use a "matrix" of airbases on the map to determine where aircraft should take off and patrol from. This module does not yet have a working version.

# Armament Module

The NDMB Armament Module allows for player armament and weapons loadouts to become persistent, operating from a weapons stockpile that can be either manually controlled or automatically updated by external sources. When players take off from airfields, the weapons on their aircraft are subtracted from stockpiles, and when they land, any remaining weapons are returned to the same stockpiles. The current version of this module only supports checking against a single stockpile.

# Ground Combat Module

The NDMB Ground Combat Module will allow for dynamic spawning of ground units based on the same "matrix" system used by the air combat module. This will allow for a dynamic ground situation based on the current territory control. This module does not yet have a working version.
