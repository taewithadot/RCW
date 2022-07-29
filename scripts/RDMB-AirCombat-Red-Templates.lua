env.info("TTI - Database Red Air Spawner Initializing...")

local RedTempInitAir = {}
local RedTempInitHeloAir = {}

local RedTempUsaAir = {}
local RedTempTrainerAir = {}
local RedTempInternationalAir = {}
local RedTempKoreanWar = {}
local RedTempWw2Air = {}
local RedTempWw2PaidAir = {}
local RedTempAntiShipAir = {}
local RedTempBomberAir = {}
local RedTempHeloAir = {}

local BlueTempJtacsInitAir = {}
local BlueTempHeloTransportAir = {}

local RedTempInitInd = 0
local RedTempInitHeloInd = 0

local RedTempUsaInd = 0
local RedTempTrainerInd = 0
local RedTempInternationalInd = 0
local RedTempKoreanWarInd = 0
local RedTempWw2Ind = 0
local RedTempWw2PaidInd = 0
local RedTempAntiShipInd = 0
local RedTempBomberInd = 0
local RedTempHeloInd = 0

local BlueTempJtacsInitInd = 0
local BlueTempHeloTransportInd = 0

local BlueTempsInitBackUpAir = {}
local BlueTempsInitBackUpAirInd = 0

local BlueTempsInitBackUpAirCv = {}
local BlueTempsInitBackUpAirCvInd = 0

local BlueTempsInitLogisticsAir = {}
local BlueTempsInitLogisticsAirInd = 0
--Liveries RED
--[[
FA_18C_hornet_livery_id = ""
F_4E_livery_id = ""
F_14A_135_GR_livery_id = ""
F_15C_livery_id = ""
F_16C_50_livery_id = ""
F_14B_livery_id = ""
F_5E_3_livery_id = ""
L_39ZA_livery_id = ""
C_101CC_livery_id = ""

Su_27_livery_id = ""
Su_30_livery_id = ""
Su_33_livery_id = ""

J_11A_livery_id = ""
JF_17_livery_id = ""

MiG_25PD_livery_id = ""
MiG_29S_livery_id = ""
MiG_23MLD_livery_id = ""
M_2000C_livery_id = ""
Mirage 2000_5_livery_id = ""
MiG_29A_livery_id = ""
MiG_31_livery_id = ""
MiG_21Bis_livery_id = ""

MiG_15bis_livery_id = ""
MiG_19P_livery_id = ""
F_86F Sabre_livery_id = ""

SpitfireLFMkIX_livery_id = ""
P_51D_30_NA_livery_id = ""
P_47D_30_livery_id = ""
Bf_109K_4_livery_id = ""
FW_190D9_livery_id = ""
I_16_livery_id = ""

Tu_22M3_livery_id = ""
Tu_142_livery_id = ""
B_52H_livery_id = ""
B_1B_livery_id = ""
Tornado IDS_livery_id = ""
A_20G_livery_id = ""

Mi_28N_livery_id = ""
Ka_50_livery_id = ""
AH_64D_livery_id = ""
AH_64A_livery_id = ""
AH_1W_livery_id = ""
SA342Mistral_livery_id = ""
CH_47D_livery_id = ""
CH_53E_livery_id = ""
Ka_27_livery_id = ""
Mi_24V_livery_id = ""
Mi_26_livery_id = ""
Mi_8MT_livery_id = ""
OH_58D_livery_id = ""
SA342M_livery_id = ""
SA342L_livery_id = ""
SH_60B_livery_id = ""
UH_1H_livery_id = ""
UH_60A_livery_id = ""

]]

local SpawnTempsInitBackUpAir = {
  
 [1] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                                                               [1] = 
                                        {
                                            ["alt"] = 21,
                                            ["action"] = "From Runway",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "CAP",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 3,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "EngageTargetsInZone",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["x"] = -138855.20765606,
                                                                ["value"] = "Air;",
                                                                ["priority"] = 0,
                                                                ["y"] = 522672.54229668,
                                                                ["zoneRadius"] = 213360,
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 6,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 5,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 0,
                                                                        ["name"] = 10,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOff",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 516451.6875,
                                            ["x"] = -196710.085938,
                                            ["name"] = "F15 Backup",
                                            ["formation_template"] = "",
                                            ["airdromeId"] = tti_sp_airdrome_id,
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1556.405146666,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_1_y,
                                            ["x"] = a2a_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2183.387452821,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_2_y,
                                            ["x"] = a2a_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                        [4] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2796.4513980216,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_3_y,
                                            ["x"] = a2a_wpt_3_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [4]
                                        [5] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3320.6818476492,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_4_y,
                                            ["x"] = a2a_wpt_4_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [5]
                                        --[[
										[6] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = InitModernRouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 138.88888888889,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3633.02305738,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
										--]]
										
											  [6] = 
                                        {
                                            ["alt"] = 21,
                                            ["action"] = "Landing",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Land",
                                            ["ETA"] = 3182.1706759273,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["formation_template"] = "",
                                            ["airdromeId"] = tti_sp_airdrome_id,
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 869,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitModernRouteAltitude,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "br fab 4834",
                                        ["skill"] = "High",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "F-5E-3",
                                        ["unitId"] = 1689,
                                        ["psi"] = 0.59271835810627,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #350-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2046,
                                            ["flare"] = 15,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -0.59271835810627,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "015",
                                    }, -- end of [1]
                                }, -- end of ["units"]
								["type"] = "TakeOff",
                                ["ETA"] = 0,
                                ["ETA_locked"] = true,
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["formation_template"] = "",
                                ["airdromeId"] = tti_sp_airdrome_id,
                                ["speed_locked"] = true,
                                ["name"] = "Blue_CAP_A2A_Backup_Airfield_INIT",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
                            }, -- end of [1]
							
 [2] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAS",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                               ["route"] = 
                                {
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 30,
                                            ["action"] = "From Runway",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAS",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Helicopters",
                                                                    [2] = "Ground Units",
                                                                    [3] = "Light armed ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 2,
                                                                        ["name"] = 1,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 1,
                                                                        ["name"] = 3,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["variantIndex"] = 2,
                                                                        ["name"] = 5,
                                                                        ["formationIndex"] = 2,
                                                                        ["value"] = 131074,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 5,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 15,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                        [6] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 6,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["targetTypes"] = 
                                                                        {
                                                                        }, -- end of ["targetTypes"]
                                                                        ["name"] = 21,
                                                                        ["value"] = "none;",
                                                                        ["noTargetTypes"] = 
                                                                        {
                                                                            [1] = "Fighters",
                                                                            [2] = "Multirole fighters",
                                                                            [3] = "Bombers",
                                                                            [4] = "Helicopters",
                                                                            [5] = "Infantry",
                                                                            [6] = "Fortifications",
                                                                            [7] = "Tanks",
                                                                            [8] = "IFV",
                                                                            [9] = "APC",
                                                                            [10] = "Artillery",
                                                                            [11] = "Unarmed vehicles",
                                                                            [12] = "AAA",
                                                                            [13] = "SR SAM",
                                                                            [14] = "MR SAM",
                                                                            [15] = "LR SAM",
                                                                            [16] = "Aircraft Carriers",
                                                                            [17] = "Cruisers",
                                                                            [18] = "Destroyers",
                                                                            [19] = "Frigates",
                                                                            [20] = "Corvettes",
                                                                            [21] = "Light armed ships",
                                                                            [22] = "Unarmed ships",
                                                                            [23] = "Submarines",
                                                                            [24] = "Cruise missiles",
                                                                            [25] = "Antiship Missiles",
                                                                            [26] = "AA Missiles",
                                                                            [27] = "AG Missiles",
                                                                            [28] = "SA Missiles",
                                                                        }, -- end of ["noTargetTypes"]
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [6]
                                                        [7] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 7,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 19,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [7]
                                                        [8] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 8,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Ground Units",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                                ["value"] = "Ground Units;",
                                                                ["noTargetTypes"] = 
                                                                {
                                                                    [1] = "Helicopters",
                                                                    [2] = "Light armed ships",
                                                                }, -- end of ["noTargetTypes"]
                                                                ["maxDistEnabled"] = false,
                                                                ["maxDist"] = 15000,
                                                            }, -- end of ["params"]
                                                        }, -- end of [8]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOff",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 462218.921875,
                                            ["x"] = -164496.46875,
                                            ["formation_template"] = "",
                                            ["airdromeId"] = tti_sp_airdrome_id,
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 869,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitModernRouteAltitude,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "br fab 4834",
                                        ["skill"] = "High",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "F-5E-3",
                                        ["unitId"] = 1689,
                                        ["psi"] = 0.59271835810627,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #350-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2046,
                                            ["flare"] = 15,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -0.59271835810627,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "015",
                                    }, -- end of [1]
                                }, -- end of ["units"]
								["type"] = "TakeOff",
                                ["ETA"] = 0,
                                ["ETA_locked"] = true,
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["formation_template"] = "",
                                ["airdromeId"] = tti_sp_airdrome_id,
                                ["speed_locked"] = true,
                                ["name"] = "Blue_CAS_Plane_INIT",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
                            }, -- end of [2]
}

local SpawnTempsInitBackUpAirCv = {
  
 [1] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 0,
                                            ["action"] = "From Runway",
                                            ["alt_type"] = "BARO",
                                            ["linkUnit"] = carrierID,
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["helipadId"] = carrierID,
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 5,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "EngageTargetsInZone",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["x"] = -138855.20765606,
                                                                ["value"] = "Air;",
                                                                ["priority"] = 0,
                                                                ["y"] = 522672.54229668,
                                                                ["zoneRadius"] = 213360,
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 6,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 5,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 0,
                                                                        ["name"] = 10,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOff",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 585242.83649226,
                                            ["x"] = -280062.60921954,
                                            ["name"] = "F/A-18C Backup",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1556.405146666,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_1_y,
                                            ["x"] = a2a_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2183.387452821,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_2_y,
                                            ["x"] = a2a_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                        [4] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2796.4513980216,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_3_y,
                                            ["x"] = a2a_wpt_3_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [4]
                                        [5] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3320.6818476492,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_4_y,
                                            ["x"] = a2a_wpt_4_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [5]
                                    --[[
									   [6] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = InitModernRouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 138.88888888889,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3633.02305738,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
										--]]
										 [6] = 
                                        {
                                            ["alt"] = 0,
                                            ["action"] = "Landing",
                                            ["alt_type"] = "BARO",
                                            ["linkUnit"] = carrierID,
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["helipadId"] = carrierID,
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Land",
                                            ["ETA"] = 3102.9161972109,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]

                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 231,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 0,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "VFA-37",
                                        ["skill"] = "High",
                                        ["parking"] = "1",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "FA-18C_hornet",
                                        ["unitId"] = 376,
                                        ["psi"] = 0.5780129404556,
                                        ["parking_id"] = "1",
                                        ["x"] = -280062.60921954,
                                        ["name"] = "Pilot #130",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4900,
                                            ["flare"] = 30,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["y"] = 585242.83649226,
                                        ["heading"] = 5.705172366724,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 2,
                                            [3] = 1,
                                            ["name"] = "Enfield21",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555722",
                                    }, -- end of [1]
                                    [2] = 
                                    {
                                        ["alt"] = 0,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "VFA-37",
                                        ["skill"] = "High",
                                        ["parking"] = "3",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "FA-18C_hornet",
                                        ["unitId"] = 377,
                                        ["psi"] = 0.5780129404556,
                                        ["parking_id"] = "3",
                                        ["x"] = -280145.91182593,
                                        ["name"] = "Pilot #131",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4900,
                                            ["flare"] = 30,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["y"] = 585306.01307397,
                                        ["heading"] = 5.705172366724,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 2,
                                            [3] = 2,
                                            ["name"] = "Enfield22",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555725",
                                    }, -- end of [2]
                                }, -- end of ["units"]
                                ["y"] = 585242.83649226,
                                ["x"] = -280062.60921954,
                                ["name"] = "Blue_CAP_A2A_Backup_CV_INIT",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
								},
								
 [2] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 0,
                                            ["action"] = "From Runway",
                                            ["alt_type"] = "BARO",
                                            ["linkUnit"] = carrierKuzID,
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["helipadId"] = carrierKuzID,
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 5,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "EngageTargetsInZone",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["x"] = -138855.20765606,
                                                                ["value"] = "Air;",
                                                                ["priority"] = 0,
                                                                ["y"] = 522672.54229668,
                                                                ["zoneRadius"] = 213360,
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 6,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 5,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 0,
                                                                        ["name"] = 10,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "TakeOff",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 585242.83649226,
                                            ["x"] = -280062.60921954,
                                            ["name"] = "F/A-18C Backup",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1556.405146666,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_1_y,
                                            ["x"] = a2a_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2183.387452821,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_2_y,
                                            ["x"] = a2a_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                        [4] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2796.4513980216,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_3_y,
                                            ["x"] = a2a_wpt_3_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [4]
                                        [5] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3320.6818476492,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_4_y,
                                            ["x"] = a2a_wpt_4_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [5]
                                      --[[  [6] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = InitModernRouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 138.88888888889,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3633.02305738,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
										--]]
			[6] = 
                                        {
                                            ["alt"] = 0,
                                            ["action"] = "Landing",
                                            ["alt_type"] = "BARO",
                                            ["linkUnit"] = carrierKuzID,
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["helipadId"] = carrierKuzID,
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Land",
                                            ["ETA"] = 3102.9161972109,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 231,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 0,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "VFA-37",
                                        ["skill"] = "High",
                                        ["parking"] = "1",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "FA-18C_hornet",
                                        ["unitId"] = 376,
                                        ["psi"] = 0.5780129404556,
                                        ["parking_id"] = "1",
                                        ["x"] = -280062.60921954,
                                        ["name"] = "Pilot #130",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4900,
                                            ["flare"] = 30,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["y"] = 585242.83649226,
                                        ["heading"] = 5.705172366724,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 2,
                                            [3] = 1,
                                            ["name"] = "Enfield21",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555722",
                                    }, -- end of [1]
                                    [2] = 
                                    {
                                        ["alt"] = 0,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "VFA-37",
                                        ["skill"] = "High",
                                        ["parking"] = "3",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "FA-18C_hornet",
                                        ["unitId"] = 377,
                                        ["psi"] = 0.5780129404556,
                                        ["parking_id"] = "3",
                                        ["x"] = -280145.91182593,
                                        ["name"] = "Pilot #131",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-120C}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4900,
                                            ["flare"] = 30,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["y"] = 585306.01307397,
                                        ["heading"] = 5.705172366724,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 2,
                                            [3] = 2,
                                            ["name"] = "Enfield22",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555725",
                                    }, -- end of [2]
                                }, -- end of ["units"]
                                ["y"] = 585242.83649226,
                                ["x"] = -280062.60921954,
                                ["name"] = "Blue_CAP_A2A_Backup_CV_KUZ_INIT",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
								},
}

local SpawnTempsInitRedAir = {
  
 [1] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Fly Over Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 0,
                                                                        ["name"] = 0,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 3,
                                                                        ["name"] = 18,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 16,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = a2a_wpt_init_y,
                                            ["x"] = a2a_wpt_init_x,
                                            ["name"] = "A2A_Spawn_Init_ALL_ME",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1556.405146666,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_1_y,
                                            ["x"] = a2a_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2183.387452821,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_2_y,
                                            ["x"] = a2a_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                        [4] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2796.4513980216,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_3_y,
                                            ["x"] = a2a_wpt_3_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [4]
                                        [5] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3320.6818476492,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_4_y,
                                            ["x"] = a2a_wpt_4_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [5]
                                        [6] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = InitModernRouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 138.88888888889,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3633.02305738,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 869,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitModernRouteAltitude,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "br fab 4834",
                                        ["skill"] = "High",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "F-5E-3",
                                        ["unitId"] = 1689,
                                        ["psi"] = 0.59271835810627,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #350-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2046,
                                            ["flare"] = 15,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -0.59271835810627,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "015",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["name"] = "A2A_Spawn_Init_Modern",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
                            }, -- end of [1]
							
 [2] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = InitWw2RouteAltitude,
                                            ["action"] = "Fly Over Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 0,
                                                                        ["name"] = 0,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 3,
                                                                        ["name"] = 18,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 16,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = a2a_wpt_init_y,
                                            ["x"] = a2a_wpt_init_x,
                                            ["name"] = "A2A_Spawn_Init_ALL_ME",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = InitWw2RouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1556.405146666,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_1_y,
                                            ["x"] = a2a_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = InitWw2RouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2183.387452821,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_2_y,
                                            ["x"] = a2a_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                        [4] = 
                                        {
                                            ["alt"] = InitWw2RouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2796.4513980216,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_3_y,
                                            ["x"] = a2a_wpt_3_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [4]
                                        [5] = 
                                        {
                                            ["alt"] = InitWw2RouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3320.6818476492,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_4_y,
                                            ["x"] = a2a_wpt_4_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [5]
                                        [6] = 
                                        {
                                            ["alt"] = InitWw2RouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = InitWw2RouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 138.88888888889,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 3633.02305738,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_wpt_5_y,
                                            ["x"] = a2a_wpt_5_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [6]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 869,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitWw2RouteAltitude,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "br fab 4834",
                                        ["skill"] = "High",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "F-5E-3",
                                        ["unitId"] = 1689,
                                        ["psi"] = 0.59271835810627,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #350-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2046,
                                            ["flare"] = 15,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -0.59271835810627,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "015",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["name"] = "A2A_Spawn_Init_15k",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
                            }, -- end of [1]
    [3] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAP",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 6705.6,
                                            ["action"] = "Fly Over Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                             {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["key"] = "CAP",
                                                            ["id"] = "EngageTargets",
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Air",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 0,
                                                                        ["name"] = 0,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = 3,
                                                                        ["name"] = 18,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 16,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 794943.511131,
                                            ["x"] = -360872.4128849,
                                            ["name"] = "A2A_Spawn_Init_ZEUS",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 806,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 6705.6,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "br fab 4834",
                                        ["skill"] = "High",
                                        ["speed"] = 138.88888888889,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "F-5E-3",
                                        ["unitId"] = 1603,
                                        ["psi"] = 0.62024948598282,
                                        ["y"] = 794943.511131,
                                        ["x"] = -360872.4128849,
                                        ["name"] = "Pilot #020-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2046,
                                            ["flare"] = 15,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -1.5851370022035,
                                        ["callsign"] = 
                                        {
                                            [1] = 5,
                                            [2] = 2,
                                            [3] = 1,
                                            ["name"] = "Dodge21",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555684",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 794943.511131,
                                ["x"] = -360872.4128849,
                                ["name"] = "A2A_Spawn_Init_ZEUS",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 305,
                            }, -- end of [3]
      [4] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Ground Attack",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = a2a_init_bombing_route_alt,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 195.27777777778,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 15,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = a2a_wpt_init_y,
                                            ["x"] = a2a_wpt_init_x,
                                            ["name"] = "A2A_Bombing_INIT",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = a2a_init_bombing_route_alt,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 195.27777777778,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "Bombing",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                                ["direction"] = 0,
                                                                ["attackQtyLimit"] = false,
                                                                ["attackQty"] = 1,
                                                                ["expend"] = "All",
                                                                ["altitude"] = 9753.6,
                                                                ["directionEnabled"] = false,
                                                                ["groupAttack"] = false,
                                                                ["y"] = a2a_bombing_target_1_y,
                                                                ["altitudeEnabled"] = false,
                                                                ["weaponType"] = 2032,
                                                                ["x"] = a2a_bombing_target_1_x,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Script",
                                                                    ["params"] = 
                                                                    {
                                                                        ["command"] = "trigger.action.outText( \"<< Enemy bombers are bombing our airbase! >>\", 7)\
\
trigger.action.outSound(\"TTI Soundfiles/air raid siren UI.ogg\" )",
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1688.8058031748,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_bombing_wpt_1_y,
                                            ["x"] = a2a_bombing_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = a2a_init_bombing_route_alt,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 195.27777777778,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 8000.000256,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 195.27777777778,
                                                                ["speedEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2154.6516462326,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_bombing_wpt_2_y,
                                            ["x"] = a2a_bombing_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 255,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = a2a_init_bombing_route_alt,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "af standard",
                                        ["skill"] = "High",
                                        ["speed"] = 195.27777777778,
                                        ["type"] = "Tu-22M3",
                                        ["unitId"] = 429,
                                        ["psi"] = 1.0012148412995,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #117",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "50000",
                                            ["flare"] = 48,
                                            ["chaff"] = 48,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -1.0012148412995,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 2,
                                            [3] = 1,
                                            ["name"] = "Springfield21",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555684",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["name"] = "A2A_Spawn_Init_Bombing",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 251,
                            }, -- end of [1]
							
      [5] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Antiship Strike",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 8000.000256,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 123.33333333333,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "AntiShip",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 15,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = a2a_wpt_init_y,
                                            ["x"] = a2a_wpt_init_x,
                                            ["name"] = "A2A_Bombing_INIT",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = 8000.000256,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 123.33333333333,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "AttackGroup",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                                ["direction"] = 0,
                                                                ["groupId"] = cvn_group_object_id,
                                                                ["attackQtyLimit"] = false,
                                                                ["attackQty"] = 1,
                                                                ["expend"] = "Auto",
                                                                ["altitude"] = 9753.6,
                                                                ["directionEnabled"] = false,
                                                                ["groupAttack"] = false,
                                                                ["weaponType"] = 1073741822,
                                                                ["altitudeEnabled"] = false,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Script",
                                                                    ["params"] = 
                                                                    {
                                                                        ["command"] = "trigger.action.outText( \"<< Enemy attackers are attacking our carrier group! >>\", 7)\
\
trigger.action.outSound(\"TTI Soundfiles/air raid siren UI.ogg\" )",
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 1632.224446679,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_bombing_wpt_1_y,
                                            ["x"] = a2a_bombing_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = 8000.000256,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 123.33333333333,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 8000.000256,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 195.27777777778,
                                                                ["speedEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 2046.7169305839,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_bombing_wpt_2_y,
                                            ["x"] = a2a_bombing_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 375,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 8000.000256,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "104th fs maryland ang, baltimore (md)",
                                        ["skill"] = "High",
                                        ["speed"] = 123.33333333333,
                                        ["AddPropAircraft"] = 
                                        {
                                        }, -- end of ["AddPropAircraft"]
                                        ["type"] = "A-10A",
                                        ["unitId"] = 684,
                                        ["psi"] = 1.0355015594039,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #176",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 5029,
                                            ["flare"] = 120,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 240,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -1.0355015594039,
                                        ["callsign"] = 
                                        {
                                            [1] = 8,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Pontiac11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555684",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["name"] = "A2A_Spawn_Init_ANTISHIP",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 124,
                            }, -- end of [2]

}

local SpawnTempsInitHeloRedAir = {
                            [1] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAS",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = HeloRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 46.25,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "CAS",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Helicopters",
                                                                    [2] = "Ground Units",
                                                                    [3] = "Light armed ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
														[2] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = HeloRouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = a2a_wpt_init_y,
                                            ["x"] = a2a_wpt_init_x,
                                            ["name"] = "A2A_Spawn_Init_HELO",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 2935,
                                        ["alt_type"] = "BARO",
                                        ["skill"] = "High",
                                        ["ropeLength"] = 15,
                                        ["speed"] = 46.25,
                                        ["type"] = "AH-1W",
                                        ["unitId"] = 616,
                                        ["psi"] = 1.0486327105312,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #023",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "1250.0",
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -1.0486327105312,
                                        ["callsign"] = 
                                        {
                                            [1] = 7,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Chevy11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555672",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["name"] = "A2A_Spawn_Init_HELO_ZEUS",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },
							
                            [2] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "CAS",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = HeloRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 46.25,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "CAS",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Helicopters",
                                                                    [2] = "Ground Units",
                                                                    [3] = "Light armed ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = a2a_wpt_init_y,
                                            ["x"] = a2a_wpt_init_x,
                                            ["name"] = "A2A_Spawn_Init_HELO",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = HeloRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 46.25,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 8061.4925591601,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_helo_wpt_1_y,
                                            ["x"] = a2a_helo_wpt_1_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                        [3] = 
                                        {
                                            ["alt"] = HeloRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 46.25,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = HeloRouteAltitude,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 40.277777777778,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 7774.5821511243,
                                            ["ETA_locked"] = false,
                                            ["y"] = a2a_helo_wpt_2_y,
                                            ["x"] = a2a_helo_wpt_2_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [3]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 331,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 2935,
                                        ["alt_type"] = "BARO",
                                        ["skill"] = "High",
                                        ["ropeLength"] = 15,
                                        ["speed"] = 46.25,
                                        ["type"] = "AH-1W",
                                        ["unitId"] = 616,
                                        ["psi"] = 1.0486327105312,
                                        ["y"] = a2a_wpt_init_y,
                                        ["x"] = a2a_wpt_init_x,
                                        ["name"] = "Pilot #023",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "1250.0",
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = -1.0486327105312,
                                        ["callsign"] = 
                                        {
                                            [1] = 7,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Chevy11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555672",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = a2a_wpt_init_y,
                                ["x"] = a2a_wpt_init_x,
                                ["name"] = "A2A_Spawn_Init_HELO",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },
							
}


local SpawnTempsUsaRedAir = {
       [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "VFC-12",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "FA-18C_hornet",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f18",
                            ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-7M}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-7M}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "VFC-12",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "FA-18C_hornet",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f18",
                            ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-7M}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{LAU-115 - AIM-7M}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f18",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "IRIAF Asia Minor",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-4E",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f4",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
                                                }, -- end of [2]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "IRIAF Asia Minor",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-4E",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f4",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
                                                }, -- end of [2]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{773675AB-7C29-422f-AFD8-32844A7B7F17}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f4",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "VF-32 Swordsmen AB200 (1976)",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-14A-135-GR",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f14a",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-7 - AIM-9L}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{BELLY AIM-7F}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [10]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "VF-32 Swordsmen AB200 (1976)",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-14A-135-GR",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f14a",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-7 - AIM-9L}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{BELLY AIM-7F}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [10]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f14a",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [4] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "65th Aggressor SQN (WA) SUPER_Flanker",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-15C",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f15",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{AIM-7F}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM-7F}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                                                }, -- end of [8]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [11]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "65th Aggressor SQN (WA) SUPER_Flanker",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-15C",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f15",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{AIM-7F}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM-7F}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                                                }, -- end of [8]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [11]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f15",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [5] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-16C_50",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f16",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{8A0BE8AE-58D4-4572-9263-3144C0D06364}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-16C_50",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f16",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{8A0BE8AE-58D4-4572-9263-3144C0D06364}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{5CE2FF2A-645A-4197-B48D-8720AC69394F}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f16",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [6] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "VF-74 Adversary",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-14B",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f14b",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-7 - AIM-9M}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{BELLY AIM-7M}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [10]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "VF-74 Adversary",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-14B",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f14b",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{LAU-7 - AIM-9M}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{BELLY AIM-7M}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM_54A_Mk47}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{F14-300gal}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                                                }, -- end of [10]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f14b",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
			  
       [7] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "black 'Mig-28'",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-5E-3",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f5",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "black 'Mig-28'",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-5E-3",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f5",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
											
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
              },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f5",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
			  

}

local SpawnTempsTrainerRedAir = {
       [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "L-39ZA",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{R-3S}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{R-3S}",
                                                }, -- end of [5]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "L-39ZA",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{R-3S}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{R-3S}",
                                                }, -- end of [5]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_l39",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
			  
       [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "C-101CC",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_c101",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [7]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{C-101-DEFA553}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "C-101CC",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_c101",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [1]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [7]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{C-101-DEFA553}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_c101",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

}

local SpawnTempsInternationalRedAir = {
		[1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-27",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su27",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [4]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [10]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-27",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su27",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [4]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [10]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su27",
                ["communication"] = true,
                ["lateActivation"] = true,
             
        },
		[2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-30",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su30",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [9]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [10]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-30",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su30",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [8]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [9]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [10]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su30",
                ["communication"] = true,
                ["lateActivation"] = true,
              
  },
		[3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "t-10k-1 test paint scheme",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-33",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su33",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [4]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [11]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                                                }, -- end of [10]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [12]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "t-10k-1 test paint scheme",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-33",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su33",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [4]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [11]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                                                }, -- end of [10]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [12]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su33",
                ["communication"] = true,
                ["lateActivation"] = true,
               },

		[4] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "J-11A",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_j11",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [3]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [9]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "J-11A",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_j11",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [3]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [9]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_j11",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
     
		[5] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "JF-17",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "DIS_PL-5EII",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "DIS_SD-10",
                                                }, -- end of [2]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "DIS_TANK800",
                                                }, -- end of [4]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "DIS_SD-10",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "DIS_PL-5EII",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "JF-17",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_jf17",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "DIS_PL-5EII",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "DIS_SD-10",
                                                }, -- end of [2]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "DIS_TANK800",
                                                }, -- end of [4]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "DIS_SD-10",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "DIS_PL-5EII",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_jf17",
                ["communication"] = true,
                ["lateActivation"] = true,
              
       },
		[6] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-25PD",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig25",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-25PD",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig25",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig25",
                ["communication"] = true,
                ["lateActivation"] = true,
              
      },
		[7] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-29S",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig29s",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-29S",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig29s",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig29s",
                ["communication"] = true,
                ["lateActivation"] = true,
              
       },
		[8] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-23MLD",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig23",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-23MLD",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig23",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig23",
                ["communication"] = true,
                ["lateActivation"] = true,
              
       },
		[9] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "Peru052",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "M-2000C",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_m2000",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{Matra_S530D}",
                                                }, -- end of [8]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{Matra_S530D}",
                                                }, -- end of [2]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{MMagicII}",
                                                }, -- end of [9]
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{MMagicII}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["livery_id"] = "Peru052",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "M-2000C",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_m2000",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{Matra_S530D}",
                                                }, -- end of [8]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{Matra_S530D}",
                                                }, -- end of [2]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{MMagicII}",
                                                }, -- end of [9]
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{MMagicII}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_m2000",
                ["communication"] = true,
                ["lateActivation"] = true,
               },

		[10] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Mirage 2000-5",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_m20005",
                                       ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
                                                }, -- end of [2]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
                                                }, -- end of [9]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Mirage 2000-5",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_m20005",
                                       ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
                                                }, -- end of [2]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
                                                }, -- end of [9]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_m20005",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
       
		[11] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-29A",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig29a",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-29A",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig29a",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "<CLEAN>",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig29a",
                ["communication"] = true,
                ["lateActivation"] = true,
               },

		[12] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-31",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig31",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
                                                }, -- end of [2]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-31",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig31",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
                                                }, -- end of [2]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig31",
                ["communication"] = true,
                ["lateActivation"] = true,
              
        },
		[13] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-21Bis",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig21",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{PTB_490_MIG21}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{R-3R}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{SPS-141-100}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{R-3S}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{PTB_490_MIG21}",
                                                }, -- end of [5]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-21Bis",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig21",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{PTB_490_MIG21}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{R-3R}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{SPS-141-100}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{R-3S}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{PTB_490_MIG21}",
                                                }, -- end of [5]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig21",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
			   
		[14] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "37",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "AJS37",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_ajs37",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{VIGGEN_X-TANK}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4476,
                                            ["flare"] = 72,
                                            ["chaff"] = 210,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
					[2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "37",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "AJS37",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_ajs37",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{VIGGEN_X-TANK}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{Robot24J}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 4476,
                                            ["flare"] = 72,
                                            ["chaff"] = 210,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_ajs37",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
			   
		[15] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-27K",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig27k",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "4500",
                                            ["flare"] = 60,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-27K",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig27k",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "4500",
                                            ["flare"] = 60,
                                            ["chaff"] = 60,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig27k",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
			   
		[16] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-17M4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su17m4",
                                       ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [5]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [2]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [7]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "3770",
                                            ["flare"] = 64,
                                            ["chaff"] = 64,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                                          [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-17M4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su17m4",
                                       ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [5]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [2]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                                                }, -- end of [7]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "3770",
                                            ["flare"] = 64,
                                            ["chaff"] = 64,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su17m4",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
			   
		[17] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-24M",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su24m",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
                                                }, -- end of [5]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "11700",
                                            ["flare"] = 96,
                                            ["chaff"] = 96,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                         [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-24M",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su24m",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{16602053-4A12-40A2-B214-AB60D481B20E}",
                                                }, -- end of [5]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "11700",
                                            ["flare"] = 96,
                                            ["chaff"] = 96,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su24m",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
			   
			   
		[18] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-24MR",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su24mr",
								["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{0519A263-0AB6-11d6-9193-00A0249B6F00}",
                                                }, -- end of [5]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{0519A261-0AB6-11d6-9193-00A0249B6F00}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "11700",
                                            ["flare"] = 96,
                                            ["chaff"] = 96,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "af standard",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-24MR",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su24mr",
								["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{0519A263-0AB6-11d6-9193-00A0249B6F00}",
                                                }, -- end of [5]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{0519A261-0AB6-11d6-9193-00A0249B6F00}",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "11700",
                                            ["flare"] = 96,
                                            ["chaff"] = 96,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su24mr",
                ["communication"] = true,
                ["lateActivation"] = true,
               },
			   
		[19] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "Russian Air Force",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-34",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su34",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [4]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [11]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [10]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [12]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 9800,
                                            ["flare"] = 64,
                                            ["chaff"] = 64,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "Russian Air Force",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-34",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_su34",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [4]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [11]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [10]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [12]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                                                }, -- end of [9]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 9800,
                                            ["flare"] = 64,
                                            ["chaff"] = 64,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_su34",
                ["communication"] = true,
                ["lateActivation"] = true,
               },

}

local SpawnTempsKoreanWarRedAir = {

       [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-15bis",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig15",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-15bis",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig15",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig15",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-19P",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig19",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{K-13A}",
                                                }, -- end of [1]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{K-13A}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "MiG-19P",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_mig19",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{K-13A}",
                                                }, -- end of [1]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{K-13A}",
                                                }, -- end of [6]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mig19",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-86F Sabre",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f86",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-86F Sabre",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_f86",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_f86",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

}

local SpawnTempsWw2RedAir = { 

       [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "SpitfireLFMkIX",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_spitfire",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "SpitfireLFMkIX",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_spitfire",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_spitfire",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "P-51D-30-NA",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_p51",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "P-51D-30-NA",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_p51",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_p51",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "P-47D-30",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_p47",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "P-47D-30",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_p47",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_p47",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [4] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Bf-109K-4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_bf109",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Bf-109K-4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_bf109",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_bf109",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [5] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "FW-190D9",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_fw190",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "FW-190D9",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_fw190",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_fw190",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

       [6] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "I-16",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_i16",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
                            
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "I-16",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_i16",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 2,
                                             ["name"] = "Springfield22" },
                            ["onboard_num"] = "022" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_i16",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
 [7] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
							["AddPropAircraft"] = 
                            {
                                ["ResinLights"] = 0.15,
                                ["SoloFlight"] = false,
                            }, -- end of ["AddPropAircraft"]
                            ["type"] = "MosquitoFBMkVI",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 996.6432,
                                            ["flare"] = 0,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 0,
                                            ["gun"] = 100, },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },  
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
							["AddPropAircraft"] = 
                            {
                                ["ResinLights"] = 0.15,
                                ["SoloFlight"] = false,
                            }, -- end of ["AddPropAircraft"]
                            ["type"] = "MosquitoFBMkVI",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 996.6432,
                                            ["flare"] = 0,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 0,
                                            ["gun"] = 100, },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },  							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_mosquito",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
			  
		
}

local SpawnTempsWw2PaidRedAir = {
       [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
				["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Ju-88A4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "SC_501_SC500",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "SC_501_SC500",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2120,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },      
						[2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Ju-88A4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "SC_501_SC500",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "SC_501_SC500",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2120,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                
[3] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Ju-88A4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "SC_501_SC500",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "SC_501_SC500",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2120,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    											
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_ju88a4",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
       [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-17G",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b1b",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{12xM64}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 7600,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },        
				[2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-17G",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b1b",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{12xM64}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 7600,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_b17g",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
       [3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
				["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Ju-88A4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2120,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },     
					[2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Ju-88A4",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 2120,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_ju88a4",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
       [4] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-17G",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b1b",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 7600,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_cap_b17g",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
}


local SpawnTempsAntiShipRedAir = {
    [1] = {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Antiship Strike",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 251.80555555556,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "AntiShip",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "red_antiship_tu22m3",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitModernRouteAltitude,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "af standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 251.80555555556,
                                        ["type"] = "Tu-22M3",
                                        ["psi"] = 0,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "red_antiship_tu22m3",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
                                                }, -- end of [1]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
                                                }, -- end of [5]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "50000",
                                            ["flare"] = 48,
                                            ["chaff"] = 48,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.3379825136882,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555685",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "red_antiship_tu22m3",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 251,
                            }, -- end of [67]

    [2] = {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Antiship Strike",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 205.55555555556,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "AntiShip",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 588937.60843905,
                                            ["x"] = 54904.28570972,
                                            ["name"] = "red_antiship_tu42",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitModernRouteAltitude,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "af standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 205.55555555556,
                                        ["type"] = "Tu-142",
                                        ["psi"] = 0,
                                        ["y"] = 588937.60843905,
                                        ["x"] = 54904.28570972,
                                        ["name"] = "red_antiship_tu42",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{C42EE4C3-355C-4B83-8B22-B39430B8F4AE}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "87000",
                                            ["flare"] = 48,
                                            ["chaff"] = 48,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.3379825136882,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555685",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 588937.60843905,
                                ["x"] = 54904.28570972,
                                ["name"] = "red_antiship_tu42",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 251,
                            }, -- end of [66]							

    [3] = {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Antiship Strike",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = InitModernRouteAltitude,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 226.11111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["key"] = "AntiShip",
                                                            ["id"] = "EngageTargets",
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["targetTypes"] = 
                                                                {
                                                                    [1] = "Ships",
                                                                }, -- end of ["targetTypes"]
                                                                ["priority"] = 0,
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 589038.2903275,
                                            ["x"] = 54747.669438811,
                                            ["name"] = "red_antiship_b52",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = InitModernRouteAltitude,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 226.11111111111,
                                        ["type"] = "B-52H",
                                        ["psi"] = 0,
                                        ["y"] = 589038.2903275,
                                        ["x"] = 54747.669438811,
                                        ["name"] = "red_antiship_b52",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{46ACDCF8-5451-4E26-BDDB-E78D5830E93C}",
                                                }, -- end of [2]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "141135",
                                            ["flare"] = 192,
                                            ["chaff"] = 1125,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.3379825136882,
                                        ["callsign"] = 
                                        {
                                            [1] = 4,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Colt11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555685",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 589038.2903275,
                                ["x"] = 54747.669438811,
                                ["name"] = "red_antiship_b52",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 251,
                            }, -- end of [65]
}


local SpawnTempsBomberRedAir = {
       [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
				["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Tu-22M3",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
					["payload"] = 
					{
						["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{BDAD04AA-4D4A-4E51-B958-180A89F963CF}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [5]
						}, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },              
                    [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Tu-22M3",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
					["payload"] = 
					{
						["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "{BDAD04AA-4D4A-4E51-B958-180A89F963CF}",
							}, -- end of [3]
							[4] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [4]
							[5] = 
							{
								["CLSID"] = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
							}, -- end of [5]
						}, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_tu22m3",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
       [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-1B",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b1b",
					["payload"] = 
					{
						["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "MK_82*28",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "MK_82*28",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "MK_82*28",
							}, -- end of [3]
						}, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },
  [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-1B",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b1b",
					["payload"] = 
					{
						["pylons"] = 
						{
							[1] = 
							{
								["CLSID"] = "MK_82*28",
							}, -- end of [1]
							[2] = 
							{
								["CLSID"] = "MK_82*28",
							}, -- end of [2]
							[3] = 
							{
								["CLSID"] = "MK_82*28",
							}, -- end of [3]
						}, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_b1b",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
      [3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-52H",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b52",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{585D626E-7F42-4073-AB70-41E728C333E2}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{6C47D097-83FF-4FB2-9496-EAB36DDF0B05}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{585D626E-7F42-4073-AB70-41E728C333E2}",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },    
 [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "B-52H",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_b52",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{585D626E-7F42-4073-AB70-41E728C333E2}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{6C47D097-83FF-4FB2-9496-EAB36DDF0B05}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{585D626E-7F42-4073-AB70-41E728C333E2}",
                                                }, -- end of [3]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_b52",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
	[4] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Tornado IDS",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_tornado",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [10]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
                                                }, -- end of [11]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
                                                }, -- end of [12]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },   
  [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Tornado IDS",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_tornado",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [3]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
                                                }, -- end of [8]
                                                [10] = 
                                                {
                                                    ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                                                }, -- end of [10]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
                                                }, -- end of [11]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
                                                }, -- end of [12]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },    							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_tornado",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
			  
 
  [5] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "A-20G",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{4xAN-M64_on_InvCountedAttachmentPoints}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },     
                    [2] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "A-20G",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{4xAN-M64_on_InvCountedAttachmentPoints}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },  			
                    [3] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "A-20G",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{4xAN-M64_on_InvCountedAttachmentPoints}",
                                                }, -- end of [1]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },  							
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_a20g",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
			 
      [6] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-5E-3",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "A2A_Spawn_Init_Bombing_Escort",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "A2A_Spawn_Init_Bombing_Escort",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
      [7] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAP",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "F-5E-3",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "A2A_Spawn_Init_ANTISHIP_Escort",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [1]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "{PTB-150GAL}",
                                                }, -- end of [5]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{AIM-9B}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 3249,
                                            ["flare"] = 60,
                                            ["ammo_type"] = 5,
                                            ["chaff"] = 60,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "A2A_Spawn_Init_ANTISHIP_Escort",
                ["communication"] = true,
                ["lateActivation"] = true,
              },
 [8] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedWW2AirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
							["AddPropAircraft"] = 
                            {
                                ["ResinLights"] = 0.15,
                                ["SoloFlight"] = false,
                            }, -- end of ["AddPropAircraft"]
                            ["type"] = "MosquitoFBMkVI",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{British_GP_500LB_Bomb_Mk5}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{British_GP_500LB_Bomb_Mk5}",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "{British_MC_500LB_Bomb_Mk1_Short_on_Handley_Page_Type_B_Cut_Bar}",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{British_MC_500LB_Bomb_Mk1_Short_on_Handley_Page_Type_B_Cut_Bar}",
                                                }, -- end of [4]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 996.6432,
                                            ["flare"] = 0,
                                            ["ammo_type"] = 1,
                                            ["chaff"] = 0,
                                            ["gun"] = 100, },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_mosquito",
                ["communication"] = true,
                ["lateActivation"] = true,
              
              }, 

       [9] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
				["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "H-6J",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_cap_l39",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "DIS_MER6_250_3_N6",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "DIS_DF4A_KD20",
                                                }, -- end of [2]
                                                [3] = 
                                                {
                                                    ["CLSID"] = "DIS_MER6_250_3_N6",
                                                }, -- end of [3]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "DIS_MER6_250_3_N6",
                                                }, -- end of [4]
                                                [5] = 
                                                {
                                                    ["CLSID"] = "DIS_MER6_250_3_N6",
                                                }, -- end of [5]
                                                [6] = 
                                                {
                                                    ["CLSID"] = "DIS_DF4A_KD20",
                                                }, -- end of [6]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "DIS_AKG_DLPOD",
                                                }, -- end of [7]
                                                [8] = 
                                                {
                                                    ["CLSID"] = "DIS_H6_250_2_N12",
                                                }, -- end of [8]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 25000,
                                            ["flare"] = 120,
                                            ["chaff"] = 120,
                                            ["gun"] = 100, },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_h6j",
                ["communication"] = true,
                ["lateActivation"] = true,
          
              },
			  
      [10] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
				["task"] = "Ground Attack",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "Russian Air Force Old",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-34",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_su34",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
                                                }, -- end of [4]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [11]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [12]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
                                                }, -- end of [9]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 9800,
                                            ["flare"] = 64,
                                            ["chaff"] = 64,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
										
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
			 [2] = { ["alt"] = RedAirRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
							["livery_id"] = "Russian Air Force Old",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 300,
                            ["type"] = "Su-34",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_bombing_su34",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                                [1] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                                                }, -- end of [1]
                                                [2] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [2]
                                                [4] = 
                                                {
                                                    ["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
                                                }, -- end of [4]
                                                [11] = 
                                                {
                                                    ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                                                }, -- end of [11]
                                                [12] = 
                                                {
                                                    ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                                                }, -- end of [12]
                                                [9] = 
                                                {
                                                    ["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
                                                }, -- end of [9]
                                                [7] = 
                                                {
                                                    ["CLSID"] = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
                                                }, -- end of [7]
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 9800,
                                            ["flare"] = 64,
                                            ["chaff"] = 64,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
										
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 2,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Springfield21" },
                            ["onboard_num"] = "021" },                    
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_bombing_su34",
                ["communication"] = true,
                ["lateActivation"] = true,
          
              },

}

local SpawnTempsHeloRedAir = { 
        [1] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAS",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 65,
                            ["type"] = "Mi-28N",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "mi28n11",
                            ["payload"] = { ["pylons"] = { [1] = { ["CLSID"] = "{57232979-8B0F-4db7-8D9A-55197E06B0F5}" },
                                                           [2] = { ["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" }, 
                                                           [3] = { ["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                                                           [4] = { ["CLSID"] = "{57232979-8B0F-4db7-8D9A-55197E06B0F5}" } },
                                            ["fuel"] = 1500,
                                            ["flare"] = 128,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 8,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Pontiac11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_mi28n",
                ["communication"] = true,
                ["lateActivation"] = true,

                },
        
        [2] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAS",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 65,
                            ["type"] = "Ka-50",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "ka5011",
                            ["payload"] = { ["pylons"] = { [1] = { ["CLSID"] = "{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}" },
                                                           [2] = { ["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" }, 
                                                           [3] = { ["CLSID"] = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" }, 
                                                           [4] = { ["CLSID"] = "{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}" } },
                                            ["fuel"] = 1450,
                                            ["flare"] = 128,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 2,
                                             [3] = 1,
                                             ["name"] = "Ford21" },
                            ["onboard_num"] = "021" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ka50",
                ["communication"] = true,
                ["lateActivation"] = true,
                },

        [3] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAS",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 65,
                            ["type"] = "AH-64D",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "ah64d",
                            ["payload"] = { ["pylons"] = { [1] = { ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                                                           [2] = { ["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, 
                                                           [3] = { ["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, 
                                                           [4] = { ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" } },
                                            ["fuel"] = 1157,
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 5,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Dodge11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ah64d",
                ["communication"] = false,
                ["lateActivation"] = true,
                },

        [4] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAS",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 65,
                            ["type"] = "AH-64A",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "ah64a11",
                            ["payload"] = { ["pylons"] = { [1] = { ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                                                           [2] = { ["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, 
                                                           [3] = { ["CLSID"] = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, 
                                                           [4] = { ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" } },
                                            ["fuel"] = 1157,
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 4,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Colt11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ah64a",
                ["communication"] = true,
                ["lateActivation"] = true,
               },

        [5] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "CAS",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 65,
                            ["type"] = "AH-1W",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "ah1w11",
                            ["payload"] = { ["pylons"] = { [1] = { ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                                                           [2] = { ["CLSID"] = "M260_HYDRA" }, 
                                                           [3] = { ["CLSID"] = "M260_HYDRA" }, 
                                                           [4] = { ["CLSID"] = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" } },
                                            ["fuel"] = 1250,
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 3,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Uzi11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ah1w",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [6] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "SA342Mistral",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "sa342mistral11",
                            ["payload"] = { ["pylons"] = { [1] = { ["CLSID"] = "{MBDA_MistralD}" },
                                                           [2] = { ["CLSID"] = "{MBDA_MistralG}" },
                                                           [3] = { ["CLSID"] = "{MBDA_MistralD}" },
                                                           [4] = { ["CLSID"] = "{MBDA_MistralG}" },
                                                           [6] = { ["CLSID"] = "{IR_Deflector}" } },
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_sa342mis",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [7] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "CH-47D",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "CH-47D",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ch74d",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [8] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "CH-53E",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "CH-53E",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]},
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ch53e",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [9] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "Ka-27",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "red_helo_ka27",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_ka27",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [10] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "Mi-24V",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "Mi-24V",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_mi24v",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [11] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "Mi-26",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "Mi-26",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_mi26",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [12] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "Mi-8MT",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "Mi-8MT",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_mi8",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [13] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "OH-58D",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "OH-58D",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_oh58d",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [14] = {
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "SA342M",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "SA342M",
							["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_sa342m",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [15] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "SA342L",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "SA342L",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_sa342l",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [16] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "SH-60B",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "SH-60B",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]} },
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_sh60b",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [17] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "UH-1H",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "UH-1H",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_uh1h",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

        [18] = { 
                ["modulation"] = 0,
                ["tasks"] = {},
                ["radioSet"] = false,
                ["task"] = "Escort",
                ["uncontrolled"] = false,
                ["taskSelected"] = true,
                ["hidden"] = false,
                ["units"] = 
                {
                    [1] = { ["alt"] = HeloRouteAltitude,
                            ["hardpoint_racks"] = true,
                            ["alt_type"] = "BARO",
                            ["skill"] = red_ai_aircraft_skill,
                            ["speed"] = 50,
                            ["type"] = "UH-60A",
                            ["psi"] = 0,
                            ["y"] = 0,
                            ["x"] = 0,
                            ["name"] = "UH-60A",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 415,
                                            ["flare"] = 32,
                                            ["chaff"] = 0,
                                            ["gun"] = 100 },
                            ["heading"] = 0,
                            ["callsign"] = { [1] = 6,
                                             [2] = 1,
                                             [3] = 1,
                                             ["name"] = "Ford11" },
                            ["onboard_num"] = "011" },
                },
                ["y"] = 0,
                ["x"] = 0,
                ["name"] = "red_helo_uh60",
                ["communication"] = true,
                ["lateActivation"] = true,
              },

}
--[[ -- full jtac template from mission is broken
local SpawnTempsJtacsInitBlueAir = {

		[1] =	{
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Reconnaissance",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 1200,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "RADIO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 61.111111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["number"] = 3,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 7,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 10000,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "JTAC-MQ",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 1200,
                                        ["alt_type"] = "RADIO",
                                        ["livery_id"] = "USAF Standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 61.111111111111,
                                        ["type"] = "RQ-1A Predator",
                                        ["psi"] = -1.5231421315686,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "JTAC-MQ",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "200",
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.5231421315686,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 4,
                                            [3] = 1,
                                            ["name"] = "Springfield41",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555669",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "JTAC-MQ",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },

		[2] =	{
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Reconnaissance",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 1200,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "RADIO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 61.111111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["number"] = 3,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 7,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 10000,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "JTAC-MQ-A2GSAM",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 1200,
                                        ["alt_type"] = "RADIO",
                                        ["livery_id"] = "USAF Standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 61.111111111111,
                                        ["type"] = "RQ-1A Predator",
                                        ["psi"] = -1.5231421315686,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "JTAC-MQ-A2GSAM",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "200",
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.5231421315686,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 4,
                                            [3] = 1,
                                            ["name"] = "Springfield41",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555669",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "JTAC-MQ-A2GSAM",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },

		[3] =	{
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Reconnaissance",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 1200,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "RADIO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 61.111111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["number"] = 3,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 7,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 10000,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "JTAC-MQ-A2GHARD",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 1200,
                                        ["alt_type"] = "RADIO",
                                        ["livery_id"] = "USAF Standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 61.111111111111,
                                        ["type"] = "RQ-1A Predator",
                                        ["psi"] = -1.5231421315686,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "JTAC-MQ-A2GHARD",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "200",
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.5231421315686,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 4,
                                            [3] = 1,
                                            ["name"] = "Springfield41",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555669",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "JTAC-MQ-A2GHARD",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },

		[4] =	{
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Reconnaissance",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 1200,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "RADIO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 61.111111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["number"] = 3,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 7,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 10000,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "JTAC-MQ-ZEUS",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 1200,
                                        ["alt_type"] = "RADIO",
                                        ["livery_id"] = "USAF Standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 61.111111111111,
                                        ["type"] = "RQ-1A Predator",
                                        ["psi"] = -1.5231421315686,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "JTAC-MQ-ZEUS",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "200",
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.5231421315686,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 4,
                                            [3] = 1,
                                            ["name"] = "Springfield41",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555669",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "JTAC-MQ-ZEUS",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },

		[5] =	{
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Reconnaissance",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 1200,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "RADIO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 61.111111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["number"] = 3,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 7,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 10000,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "JTAC-MQ-A2GHELO",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 1200,
                                        ["alt_type"] = "RADIO",
                                        ["livery_id"] = "USAF Standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 61.111111111111,
                                        ["type"] = "RQ-1A Predator",
                                        ["psi"] = -1.5231421315686,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "JTAC-MQ-A2GHELO",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "200",
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.5231421315686,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 4,
                                            [3] = 1,
                                            ["name"] = "Springfield41",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555669",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "JTAC-MQ-A2GHELO",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },

		[6] =	{
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Reconnaissance",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 1200,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "RADIO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 61.111111111111,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["number"] = 3,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 7,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["number"] = 5,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 10000,
                                                                ["pattern"] = "Circle",
                                                                ["speed"] = 30.555555555556,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["name"] = "JTAC-MQ-A2GEASY",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 1200,
                                        ["alt_type"] = "RADIO",
                                        ["livery_id"] = "USAF Standard",
                                        ["skill"] = red_ai_aircraft_skill,
                                        ["speed"] = 61.111111111111,
                                        ["type"] = "RQ-1A Predator",
                                        ["psi"] = -1.5231421315686,
                                        ["y"] = 0,
                                        ["x"] = 0,
                                        ["name"] = "JTAC-MQ-A2GEASY",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "200",
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 1.5231421315686,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 4,
                                            [3] = 1,
                                            ["name"] = "Springfield41",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "555669",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = 0,
                                ["x"] = 0,
                                ["name"] = "JTAC-MQ-A2GEASY",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            },

							
}
]]

local SpawnTempsJtacsInitBlueAir = {

    [1] = { --JTAC-MQ-ZEUS-LSR1685
    ["visible"] = false,
    ["tasks"] = {},
    ["uncontrollable"] = false,
    ["task"] = "Reconnaisance",
    ["hidden"] = false,
    ["units"] = {
        [1] = {
            ["type"] = jtac_type,
            ["transportable"] = { ["randomTransportable"] = false},
            ["skill"] = red_ai_aircraft_skill,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "JTAC-MQ",
            ["heading"] = 0,
            ["playerCanDrive"] = true,
            ["alt_type"] = "BARO",
            ["alt"] = 3000,
            ["speed"] = 220,
            ["payload"] = {
                    ["pylons"] = {
                --[[ [1] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [1]
                    [2] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [2]
                    [3] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [3]
                    [4] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [4]
            },--]]
                },
                    ["fuel"] = 1300,
                    ["flare"] = 192,
                    ["chaff"] = 192,
                    ["gun"] = 100
            },
            ["callsign"] = {
                [1] = 8,
                [2] = 9,
                [3] = 1,
                ["name"] = "Pontiac91"
            },
            ["onboard_num"] = 022,
        },
    },
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "JTAC-MQ",
    ["lateActivation"] = true 
    },

    [2] = { --JTAC-MQ-ZEUS-LSR1685
    ["visible"] = false,
    ["tasks"] = {},
    ["uncontrollable"] = false,
    ["task"] = "Reconnaisance",
    ["hidden"] = false,
    ["units"] = {
        [1] = {
            ["type"] = jtac_type,
            ["transportable"] = { ["randomTransportable"] = false},
            ["skill"] = red_ai_aircraft_skill,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "JTAC-MQ",
            ["heading"] = 0,
            ["playerCanDrive"] = true,
            ["alt_type"] = "BARO",
            ["alt"] = 3000,
            ["speed"] = 220,
            ["payload"] = {
                    ["pylons"] = {
                --[[ [1] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [1]
                    [2] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [2]
                    [3] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [3]
                    [4] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [4]
            },--]]
                },
                    ["fuel"] = 1300,
                    ["flare"] = 192,
                    ["chaff"] = 192,
                    ["gun"] = 100
            },
            ["callsign"] = {
                [1] = 8,
                [2] = 9,
                [3] = 1,
                ["name"] = "Pontiac91"
            },
            ["onboard_num"] = 022,
        },
    },
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "JTAC-MQ-A2GEASY",
    ["lateActivation"] = true 
    },

    [3] = { --JTAC-MQ-ZEUS-LSR1685
    ["visible"] = false,
    ["tasks"] = {},
    ["uncontrollable"] = false,
    ["task"] = "Reconnaisance",
    ["hidden"] = false,
    ["units"] = {
        [1] = {
            ["type"] = jtac_type,
            ["transportable"] = { ["randomTransportable"] = false},
            ["skill"] = red_ai_aircraft_skill,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "JTAC-MQ",
            ["heading"] = 0,
            ["playerCanDrive"] = true,
            ["alt_type"] = "BARO",
            ["alt"] = 3000,
            ["speed"] = 220,
            ["payload"] = {
                    ["pylons"] = {
                --[[ [1] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [1]
                    [2] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [2]
                    [3] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [3]
                    [4] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [4]
            },--]]
                },
                    ["fuel"] = 1300,
                    ["flare"] = 192,
                    ["chaff"] = 192,
                    ["gun"] = 100
            },
            ["callsign"] = {
                [1] = 8,
                [2] = 9,
                [3] = 1,
                ["name"] = "Pontiac91"
            },
            ["onboard_num"] = 022,
        },
    },
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "JTAC-MQ-A2GHELO",
    ["lateActivation"] = true 
    },

    [4] = { --JTAC-MQ-ZEUS-LSR1685
	
		["visible"] = false,
		["tasks"] = {},
		["uncontrollable"] = false,
		["task"] = "Reconnaisance",
		["hidden"] = false,
		["units"] = {
			[1] = {
				["type"] = jtac_type,
				["transportable"] = { ["randomTransportable"] = false},
				["skill"] = red_ai_aircraft_skill,
				["y"] = 0,
				["x"] = 0,
				["name"] = "JTAC-MQ",
				["heading"] = 0,
				["playerCanDrive"] = true,
				["alt_type"] = "BARO",
				["alt"] = 3000,
				["speed"] = 220,
				["payload"] = {
						["pylons"] = {
					--[[ [1] = {
							["CLSID"] = "AGM114x2_OH_58",
						}, -- end of [1]
						[2] = {
							["CLSID"] = "AGM114x2_OH_58",
						}, -- end of [2]
						[3] = {
							["CLSID"] = "AGM114x2_OH_58",
						}, -- end of [3]
						[4] = {
							["CLSID"] = "AGM114x2_OH_58",
						}, -- end of [4]
				},--]]
					},
						["fuel"] = 1300,
						["flare"] = 192,
						["chaff"] = 192,
						["gun"] = 100
				},
				["callsign"] = {
					[1] = 8,
					[2] = 9,
					[3] = 1,
					["name"] = "Pontiac91"
				},
				["onboard_num"] = 022,
			},
		},
		["y"] = 0,
		["x"] = 0,
        ["name"] = "JTAC-MQ-A2GHARD",
        ["lateActivation"] = true 
    },

    [5] = { --JTAC-MQ-ZEUS-LSR1685
    ["visible"] = false,
    ["tasks"] = {},
    ["uncontrollable"] = false,
    ["task"] = "Reconnaisance",
    ["hidden"] = false,
    ["units"] = {
        [1] = {
            ["type"] = jtac_type,
            ["transportable"] = { ["randomTransportable"] = false},
            ["skill"] = red_ai_aircraft_skill,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "JTAC-MQ",
            ["heading"] = 0,
            ["playerCanDrive"] = true,
            ["alt_type"] = "BARO",
            ["alt"] = 3000,
            ["speed"] = 220,
            ["payload"] = {
                    ["pylons"] = {
                --[[ [1] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [1]
                    [2] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [2]
                    [3] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [3]
                    [4] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [4]
            },--]]
                },
                    ["fuel"] = 1300,
                    ["flare"] = 192,
                    ["chaff"] = 192,
                    ["gun"] = 100
            },
            ["callsign"] = {
                [1] = 8,
                [2] = 9,
                [3] = 1,
                ["name"] = "Pontiac91"
            },
            ["onboard_num"] = 022,
        },
    },
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "JTAC-MQ-A2GSAM",
    ["lateActivation"] = true 
    },

    [6] = { --JTAC-MQ-ZEUS-LSR1685
    ["visible"] = false,
    ["tasks"] = {},
    ["uncontrollable"] = false,
    ["task"] = "Reconnaisance",
    ["hidden"] = false,
    ["units"] = {
        [1] = {
            ["type"] = jtac_type,
            ["transportable"] = { ["randomTransportable"] = false},
            ["skill"] = red_ai_aircraft_skill,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "JTAC-MQ",
            ["heading"] = 0,
            ["playerCanDrive"] = true,
            ["alt_type"] = "BARO",
            ["alt"] = 3000,
            ["speed"] = 220,
            ["payload"] = {
                    ["pylons"] = {
                --[[ [1] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [1]
                    [2] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [2]
                    [3] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [3]
                    [4] = {
                        ["CLSID"] = "AGM114x2_OH_58",
                    }, -- end of [4]
            },--]]
                },
                    ["fuel"] = 1300,
                    ["flare"] = 192,
                    ["chaff"] = 192,
                    ["gun"] = 100
            },
            ["callsign"] = {
                [1] = 8,
                [2] = 9,
                [3] = 1,
                ["name"] = "Pontiac91"
            },
            ["onboard_num"] = 022,
        },
    },
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "JTAC-MQ-ZEUS",
    ["lateActivation"] = true 
    },		
}

local SpawnTempsHeloTransportBlueAir = {
		[1] = { --cmd Transport_Helo_Zeus
				["modulation"] = 0,
				["tasks"] = {},
				["radioSet"] = false,
				["task"] = "Transport",
				["uncontrolled"] = false,
				["taskSelected"] = true,
				["hidden"] = false,
				["units"] = 
				{
					[1] = { ["alt"] = HeloRouteAltitude,
							["hardpoint_racks"] = true,
							["alt_type"] = "BARO",
							["skill"] = red_ai_aircraft_skill,
							["speed"] = 50,
							["type"] = "CH-53E",
							["psi"] = 0,
							["y"] = 0,
							["x"] = 0,
							["name"] = "Transport_Helo_Zeus",
							["payload"] = { ["pylons"] = {},
											["fuel"] = 1908,
											["flare"] = 60,
											["chaff"] = 60,
											["gun"] = 100 },
							["heading"] = 0,
							["callsign"] = { [1] = 7,
											 [2] = 1,
											 [3] = 1,
											 ["name"] = "Chevy11" },
							["onboard_num"] = "011" },
				},
				["y"] = 0,
				["x"] = 0,
				["name"] = "Transport_Helo_Zeus",
				["communication"] = true,
				["lateActivation"] = true,
			},
		[2] = { --cmd Transport_Helo_Zeus_2
				["modulation"] = 0,
				["tasks"] = {},
				["radioSet"] = false,
				["task"] = "Transport",
				["uncontrolled"] = false,
				["taskSelected"] = true,
				["hidden"] = false,
				["units"] = 
				{
					[1] = { ["alt"] = HeloRouteAltitude,
							["hardpoint_racks"] = true,
							["alt_type"] = "BARO",
							["skill"] = red_ai_aircraft_skill,
							["speed"] = 50,
							["type"] = "CH-53E",
							["psi"] = 0,
							["y"] = 0,
							["x"] = 0,
							["name"] = "Transport_Helo_Zeus",
							["payload"] = { ["pylons"] = {},
											["fuel"] = 1908,
											["flare"] = 60,
											["chaff"] = 60,
											["gun"] = 100 },
							["heading"] = 0,
							["callsign"] = { [1] = 7,
											 [2] = 1,
											 [3] = 2,
											 ["name"] = "Chevy12" },
							["onboard_num"] = "011" },
				},
				["y"] = 0,
				["x"] = 0,
				["name"] = "Transport_Helo_Zeus_2",
				["communication"] = true,
				["lateActivation"] = true,
			},
		[3] = { --cmd Transport_Helo_1
				["modulation"] = 0,
				["tasks"] = {},
				["radioSet"] = false,
				["task"] = "Transport",
				["uncontrolled"] = false,
				["taskSelected"] = true,
				["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 500,
                                            --["action"] = "From Ground Area Hot",
                                            --["action"] = "From Ground Area",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 46.25,
                                            --["type"] = "TakeOffGround",
                                            --["type"] = "TakeOffGroundHot",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = 0,
                                            ["x"] = 0,
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
				["hidden"] = false,
				["units"] = 
				{
					[1] = { ["alt"] = HeloRouteAltitude,
							["hardpoint_racks"] = true,
							["alt_type"] = "BARO",
							["skill"] = red_ai_aircraft_skill,
							["speed"] = 50,
							["type"] = "CH-47D",
							["psi"] = 0,
							["y"] = 0,
							["x"] = 0,
							["name"] = "Transport_Helo_1",
							["payload"] = { ["pylons"] = {},
											["fuel"] = 1100,
											["flare"] = 30,
											["chaff"] = 30,
											["gun"] = 100 },
							["heading"] = 0,
							["callsign"] = { [1] = 1,
											 [2] = 1,
											 [3] = 1,
											 ["name"] = "Enfield11" },
							["onboard_num"] = "011" },
				},
				["y"] = 0,
				["x"] = 0,
				["name"] = "Transport_Helo_1",
				["communication"] = true,
				["lateActivation"] = true,
			},

		[4] = { --cmd Transport_Helo_2
				["modulation"] = 0,
				["tasks"] = {},
				["radioSet"] = false,
				["task"] = "Transport",
				["uncontrolled"] = false,
				["taskSelected"] = true,
				["hidden"] = false,
				["units"] = 
				{
					[1] = { ["alt"] = HeloRouteAltitude,
							["hardpoint_racks"] = true,
							["alt_type"] = "BARO",
							["skill"] = red_ai_aircraft_skill,
							["speed"] = 50,
							["type"] = "CH-47D",
							["psi"] = 0,
							["y"] = 0,
							["x"] = 0,
							["name"] = "Transport_Helo_1",
							["payload"] = { ["pylons"] = {},
											["fuel"] = 1100,
											["flare"] = 30,
											["chaff"] = 30,
											["gun"] = 100 },
							["heading"] = 0,
							["callsign"] = { [1] = 1,
											 [2] = 1,
											 [3] = 2,
											 ["name"] = "Enfield12" },
							["onboard_num"] = "011" },
				},
				["y"] = 0,
				["x"] = 0,
				["name"] = "Transport_Helo_2",
				["communication"] = true,
				["lateActivation"] = true,
			},
--[[ 
 [2] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = false,
                                ["task"] = "Transport",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 500,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 55.555555555556,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = -45000,
                                            ["x"] = 20924.302788844,
                                            ["name"] = "CVNRescue",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 556,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 500,
                                        ["hardpoint_racks"] = true,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "standard",
                                        ["skill"] = "High",
                                        ["ropeLength"] = 15,
                                        ["speed"] = 55.555555555556,
                                        ["type"] = "SH-60B",
                                        ["unitId"] = 556,
                                        ["psi"] = 0,
                                        ["y"] = -45000,
                                        ["x"] = 20924.302788844,
                                        ["name"] = "CVNRescue",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "1100",
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 0,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Enfield11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "011",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -45000,
                                ["x"] = 20924.302788844,
                                ["name"] = "CVNRescue",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 127.5,
                            }, -- end of [1]
        --]]

}

local SpawnBlueTempsInitLogisticsAir = {
  [1] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = true,
                                ["task"] = "Refueling",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 5791.2,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 187.56944444444,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "Tanker",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]

                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["altitudeEdited"] = true,
                                                                ["pattern"] = "Race-Track",
                                                                ["speed"] = 187.56944444444,
                                                                ["altitude"] = 5791.2,
                                                                ["speedEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
													 -- [5] = 
                                                        -- {
                                                            -- ["enabled"] = true,
                                                            -- ["auto"] = true,
                                                            -- ["id"] = "WrappedAction",
                                                            -- ["number"] = 5,
                                                            -- ["params"] = 
                                                            -- {
                                                                -- ["action"] = 
                                                                -- {
                                                                    -- ["id"] = "ActivateBeacon",
                                                                    -- ["params"] = 
                                                                    -- {
                                                                        -- ["type"] = 4,
                                                                        -- ["AA"] = true,
                                                                        -- ["callsign"] = "SHL",
                                                                        -- ["modeChannel"] = "Y",
                                                                        -- ["channel"] = 40,
                                                                        -- ["system"] = 4,
                                                                        -- ["unitId"] = 9003,
                                                                        -- ["bearing"] = true,
                                                                        -- ["frequency"] = 1127000000,
                                                                    -- }, -- end of ["params"]
                                                                -- }, -- end of ["action"]
                                                            -- }, -- end of ["params"]
                                                        -- }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = tanker_basket_01_init_y,
                                            ["x"] = tanker_basket_01_init_x,
                                            ["name"] = "TANKER-135MPRS-254am-40Y-SHELL",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = 5791.2,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 187.56944444444,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 525.31001419559,
                                            ["ETA_locked"] = false,
                                            ["y"] = tanker_basket_01_wpt_y,
                                            ["x"] = tanker_basket_01_wpt_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                               -- ["groupId"] = 6,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 5791.2,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "100th ARW",
                                        ["skill"] = "High",
                                        ["speed"] = 187.56944444444,
                                        ["type"] = "KC135MPRS",
                                        --["unitId"] = 9003,
                                        ["psi"] = -2.818640176695,
                                        ["y"] = tanker_basket_01_init_y,
                                        ["x"] = tanker_basket_01_init_x,
                                        ["name"] = "TANKER-135MPRS-254am-40Y-SHELL-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 90700,
                                            ["flare"] = 60,
                                            ["chaff"] = 120,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 2.818640176695,
                                        ["callsign"] = 
                                        {
                                            [1] = 3,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Shell11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "010",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = tanker_basket_01_init_y,
                                ["x"] = tanker_basket_01_init_x,
                                ["name"] = "TANKER-135MPRS-254am-40Y-SHELL",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 254,
                            }, -- end of [1]
                            [2] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = true,
                                ["task"] = "AWACS",
                                ["uncontrolled"] = false,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 12801.9048,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 205.55555555556,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "AWACS",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "EPLRS",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["groupId"] = 1,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [4] = 
                                                        {
                                                            ["number"] = 4,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [5] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 5,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 19,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
                                                        [6] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["number"] = 6,
                                                            ["params"] = 
                                                            {
                                                                ["altitude"] = 12801.9048,
                                                                ["pattern"] = "Race-Track",
                                                                ["speed"] = 205.55555555556,
                                                                ["speedEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [6]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = awacs_01_init_y,
                                            ["x"] = awacs_01_init_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = 2000,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 220.97222222222,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "Option",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                        ["name"] = 19,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                        [2] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 2,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SwitchWaypoint",
                                                                    ["params"] = 
                                                                    {
                                                                        ["goToWaypointIndex"] = 1,
                                                                        ["fromWaypointIndex"] = 2,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [2]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 79.058012924917,
                                            ["ETA_locked"] = false,
                                            ["y"] = awacs_01_wpt_y,
                                            ["x"] = awacs_01_wpt_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 7,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 12801.9048,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = usa_awacs_livery,
                                        ["skill"] = "High",
                                        ["speed"] = 205.55555555556,
                                        ["type"] = usa_awacs_type,
                                        ["unitId"] = 7,
                                        ["psi"] = -2.1112158270655,
                                        ["y"] = awacs_01_init_y,
                                        ["x"] = awacs_01_init_x,
                                        ["name"] = "USA AWACS-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "65000",
                                            ["flare"] = 60,
                                            ["chaff"] = 120,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 2.1112158270655,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Overlord11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "011",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = awacs_01_init_y,
                                ["x"] = awacs_01_init_x,
                                ["name"] = "USA AWACS",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = awacs_frequency,
                            }, -- end of [2]
                            [3] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = {}, -- end of ["tasks"]
                                ["radioSet"] = true,
                                --["radioSet"] = false,
                                ["task"] = "Refueling",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 4572,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 133.09722222222,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "Tanker",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]

                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["speedEdited"] = true,
                                                                ["pattern"] = "Race-Track",
                                                                ["speed"] = 133.09722222222,
                                                                ["altitude"] = 4572.3048,
                                                                ["altitudeEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
													 -- [5] = 
                                                        -- {
                                                            -- ["enabled"] = true,
                                                            -- ["auto"] = true,
                                                            -- ["id"] = "WrappedAction",
                                                            -- ["number"] = 5,
                                                            -- ["params"] = 
                                                            -- {
                                                                -- ["action"] = 
                                                                -- {
                                                                    -- ["id"] = "ActivateBeacon",
                                                                    -- ["params"] = 
                                                                    -- {
                                                                        -- ["type"] = 4,
                                                                        -- ["AA"] = true,
                                                                        -- ["callsign"] = "ARC",
                                                                        -- ["modeChannel"] = "Y",
                                                                        -- ["channel"] = 39,
                                                                        -- ["system"] = 4,
                                                                        -- ["unitId"] = 9002,
                                                                        -- ["bearing"] = true,
                                                                        -- ["frequency"] = 1126000000
                                                                    -- }, -- end of ["params"]
                                                                -- }, -- end of ["action"]
                                                            -- }, -- end of ["params"]
                                                        -- }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = tanker_boom_slow_01_init_y,
                                            ["x"] = tanker_boom_slow_01_init_x,
                                            ["name"] = "TANKER-KC135-SLOW-256am-39Y-ARCO",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = 4572.3048,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 133.09722222222,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 677.15904221717,
                                            ["ETA_locked"] = false,
                                            ["y"] = tanker_boom_slow_01_wpt_y,
                                            ["x"] = tanker_boom_slow_01_wpt_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                --["groupId"] = 8,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 4572,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "Standard USAF",
                                        ["skill"] = "High",
                                        ["speed"] = 133.09722222222,
                                        ["type"] = "KC-135",
                                        --["unitId"] = 9002,
                                        ["psi"] = -0.59738886759702,
                                        ["y"] = tanker_boom_slow_01_init_y,
                                        ["x"] = tanker_boom_slow_01_init_x,
                                        ["name"] = "TANKER-KC135-SLOW-256am-39Y-ARCO-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 90700,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 0.59738886759702,
                                        ["callsign"] = 
                                        {
                                            [1] = 2,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Arco11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "012",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = tanker_boom_slow_01_init_y,
                                ["x"] = tanker_boom_slow_01_init_x,
                                ["name"] = "TANKER-KC135-SLOW-256am-39Y-ARCO",
                                ["communication"] = true,
                              --  ["start_time"] = 0,
                               -- ["modulation"] = 0,
                                ["frequency"] = 256,
                            }, -- end of [3]
                            [4] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = true,
                                ["task"] = "Refueling",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 5791.2,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 187.56944444444,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["number"] = 1,
                                                            ["auto"] = true,
                                                            ["id"] = "Tanker",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
            
                                                        [2] = 
                                                        {
                                                            ["number"] = 2,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["enabled"] = true,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetImmortal",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [3]
                                                        [3] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "WrappedAction",
                                                            ["number"] = 3,
                                                            ["params"] = 
                                                            {
                                                                ["action"] = 
                                                                {
                                                                    ["id"] = "SetInvisible",
                                                                    ["params"] = 
                                                                    {
                                                                        ["value"] = true,
                                                                    }, -- end of ["params"]
                                                                }, -- end of ["action"]
                                                            }, -- end of ["params"]
                                                        }, -- end of [4]
                                                        [4] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = false,
                                                            ["id"] = "Orbit",
                                                            ["number"] = 4,
                                                            ["params"] = 
                                                            {
                                                                ["altitudeEdited"] = true,
                                                                ["pattern"] = "Race-Track",
                                                                ["speed"] = 187.56944444444,
                                                                ["altitude"] = 5791.2,
                                                                ["speedEdited"] = true,
                                                            }, -- end of ["params"]
                                                        }, -- end of [5]
													 -- [5] = 
                                                        -- {
                                                            -- ["enabled"] = true,
                                                            -- ["auto"] = true,
                                                            -- ["id"] = "WrappedAction",
                                                            -- ["number"] = 5,
                                                            -- ["params"] = 
                                                            -- {
                                                                -- ["action"] = 
                                                                -- {
                                                                    -- ["id"] = "ActivateBeacon",
                                                                    -- ["params"] = 
                                                                    -- {
                                                                        -- ["type"] = 4,
                                                                        -- ["AA"] = true,
                                                                        -- ["callsign"] = "TEX",
                                                                        -- ["modeChannel"] = "Y",
                                                                        -- ["channel"] = 41,
                                                                        -- ["system"] = 4,
                                                                        -- ["unitId"] = 9001,
                                                                        -- ["bearing"] = true,
                                                                        -- ["frequency"] = 1128000000,
                                                                    -- }, -- end of ["params"]
                                                                -- }, -- end of ["action"]
                                                            -- }, -- end of ["params"]
                                                        -- }, -- end of [5]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = tanker_boom_fast_01_init_y,
                                            ["x"] = tanker_boom_fast_01_init_x,
                                            ["name"] = "TANKER-KC135-FAST-255am-41Y-TEX",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                        [2] = 
                                        {
                                            ["alt"] = 5791.2,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 187.56944444444,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 507.84400194179,
                                            ["ETA_locked"] = false,
                                            ["y"] = tanker_boom_fast_01_wpt_y,
                                            ["x"] = tanker_boom_fast_01_wpt_x,
                                            ["name"] = "",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [2]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                --["groupId"] = 9,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 5791.2,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "Standard USAF",
                                        ["skill"] = "High",
                                        ["speed"] = 187.56944444444,
                                        ["type"] = "KC-135",
                                        --["unitId"] = 9001,
                                        ["psi"] = -2.8289587515335,
                                        ["y"] = tanker_boom_fast_01_init_y,
                                        ["x"] = tanker_boom_fast_01_init_x,
                                        ["name"] = "TANKER-KC135-FAST-255am-41Y-TEX-1",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = 90700,
                                            ["flare"] = 0,
                                            ["chaff"] = 0,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 2.8289587515335,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Texaco11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "013",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = tanker_boom_fast_01_init_y,
                                ["x"] = tanker_boom_fast_01_init_x,
                                ["name"] = "TANKER-KC135-FAST-255am-41Y-TEX",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 255,
                            }, -- end of [4]
--[[ 
 [5] = 
                            {
                                ["lateActivation"] = true,
                                ["tasks"] = 
                                {
                                }, -- end of ["tasks"]
                                ["radioSet"] = true,
                                ["task"] = "Refueling",
                                ["uncontrolled"] = false,
                                ["taskSelected"] = true,
                                ["route"] = 
                                {
                                    ["routeRelativeTOT"] = true,
                                    ["points"] = 
                                    {
                                        [1] = 
                                        {
                                            ["alt"] = 2000,
                                            ["action"] = "Turning Point",
                                            ["alt_type"] = "BARO",
                                            ["properties"] = 
                                            {
                                                ["addopt"] = 
                                                {
                                                }, -- end of ["addopt"]
                                            }, -- end of ["properties"]
                                            ["speed"] = 138.88888888889,
                                            ["task"] = 
                                            {
                                                ["id"] = "ComboTask",
                                                ["params"] = 
                                                {
                                                    ["tasks"] = 
                                                    {
                                                        [1] = 
                                                        {
                                                            ["enabled"] = true,
                                                            ["auto"] = true,
                                                            ["id"] = "Tanker",
                                                            ["number"] = 1,
                                                            ["params"] = 
                                                            {
                                                            }, -- end of ["params"]
                                                        }, -- end of [1]
                                                    }, -- end of ["tasks"]
                                                }, -- end of ["params"]
                                            }, -- end of ["task"]
                                            ["type"] = "Turning Point",
                                            ["ETA"] = 0,
                                            ["ETA_locked"] = true,
                                            ["y"] = -48932.270916335,
                                            ["x"] = 27852.589641434,
                                            ["name"] = "CVNTanker",
                                            ["formation_template"] = "",
                                            ["speed_locked"] = true,
                                        }, -- end of [1]
                                    }, -- end of ["points"]
                                }, -- end of ["route"]
                                ["groupId"] = 555,
                                ["hidden"] = false,
                                ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["alt"] = 2000,
                                        ["alt_type"] = "BARO",
                                        ["livery_id"] = "usaf standard",
                                        ["skill"] = "High",
                                        ["speed"] = 138.88888888889,
                                        ["type"] = "S-3B Tanker",
                                        ["unitId"] = 555,
                                        ["psi"] = 0,
                                        ["y"] = -48932.270916335,
                                        ["x"] = 27852.589641434,
                                        ["name"] = "CVNTanker",
                                        ["payload"] = 
                                        {
                                            ["pylons"] = 
                                            {
                                            }, -- end of ["pylons"]
                                            ["fuel"] = "7813",
                                            ["flare"] = 30,
                                            ["chaff"] = 30,
                                            ["gun"] = 100,
                                        }, -- end of ["payload"]
                                        ["heading"] = 81.681408993339,
                                        ["callsign"] = 
                                        {
                                            [1] = 1,
                                            [2] = 1,
                                            [3] = 1,
                                            ["name"] = "Texaco11",
                                        }, -- end of ["callsign"]
                                        ["onboard_num"] = "010",
                                    }, -- end of [1]
                                }, -- end of ["units"]
                                ["y"] = -48932.270916335,
                                ["x"] = 27852.589641434,
                                ["name"] = "CVNTanker",
                                ["communication"] = true,
                                ["start_time"] = 0,
                                ["modulation"] = 0,
                                ["frequency"] = 253,
                            }, -- end of [1]
							--]]
}


for i, Template in pairs(SpawnTempsInitRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempInitInd = RedTempInitInd + 1
        RedTempInitAir[RedTempInitInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red init aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsInitHeloRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.HELICOPTER, Template)
        RedTempInitHeloInd = RedTempInitHeloInd + 1
        RedTempInitHeloAir[RedTempInitHeloInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.HELICOPTER, country.id.CJTF_RED)
        env.info("TTI - Adding red InitHelo aircraft " .. Template.name .. " template to the database." )
end



for i, Template in pairs(SpawnTempsUsaRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempUsaInd = RedTempUsaInd + 1
        RedTempUsaAir[RedTempUsaInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red usa aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsTrainerRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempTrainerInd = RedTempTrainerInd + 1
        RedTempTrainerAir[RedTempTrainerInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red trainer aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsInternationalRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempInternationalInd = RedTempInternationalInd + 1
        RedTempInternationalAir[RedTempInternationalInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red international aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsKoreanWarRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempKoreanWarInd = RedTempKoreanWarInd + 1
        RedTempKoreanWar[RedTempKoreanWarInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red korean war aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsWw2RedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempWw2Ind = RedTempWw2Ind + 1
        RedTempWw2Air[RedTempWw2Ind] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red ww2 aircraft " .. Template.name .. " template to the database." )
end

if ww2_asset_pack_enable == true then
	for i, Template in pairs(SpawnTempsWw2PaidRedAir)
	do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
			RedTempWw2PaidInd = RedTempWw2PaidInd + 1
			RedTempWw2PaidAir[RedTempWw2PaidInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
			env.info("TTI - Adding red ww2 aircraft " .. Template.name .. " template to the database." )
	end
end

for i, Template in pairs(SpawnTempsAntiShipRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempAntiShipInd = RedTempAntiShipInd + 1
        RedTempAntiShipAir[RedTempAntiShipInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red anti ship aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsBomberRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.AIRPLANE, Template)
        RedTempBomberInd = RedTempBomberInd + 1
        RedTempBomberAir[RedTempBomberInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.AIRPLANE, country.id.CJTF_RED)
        env.info("TTI - Adding red bomber aircraft " .. Template.name .. " template to the database." )
end


for i, Template in pairs(SpawnTempsHeloRedAir)
  do coalition.addGroup(country.id.CJTF_RED, Group.Category.HELICOPTER, Template)
        RedTempHeloInd = RedTempHeloInd + 1
        RedTempHeloAir[RedTempHeloInd] = GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.HELICOPTER, country.id.CJTF_RED)
        env.info("TTI - Adding red helo aircraft " .. Template.name .. " template to the database." )
end


for i, Template in pairs(SpawnTempsJtacsInitBlueAir)
  do coalition.addGroup(country.id.CJTF_BLUE, Group.Category.AIRPLANE, Template)
        BlueTempJtacsInitInd = BlueTempJtacsInitInd + 1
        BlueTempJtacsInitAir[BlueTempJtacsInitInd] = GROUP:NewTemplate(Template, coalition.side.BLUE, Group.Category.AIRPLANE, country.id.CJTF_BLUE)
        env.info("TTI - Adding blue jtac aircraft " .. Template.name .. " templaFte to the database." )
end


for i, Template in pairs(SpawnTempsHeloTransportBlueAir)
  do coalition.addGroup(country.id.CJTF_BLUE, Group.Category.HELICOPTER, Template)
        BlueTempHeloTransportInd = BlueTempHeloTransportInd + 1
        BlueTempHeloTransportAir[BlueTempHeloTransportInd] = GROUP:NewTemplate(Template, coalition.side.BLUE, Group.Category.HELICOPTER, country.id.CJTF_BLUE)
        env.info("TTI - Adding blue helo transport aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsInitBackUpAir)
  do coalition.addGroup(country.id.CJTF_BLUE, Group.Category.AIRPLANE, Template)
         BlueTempsInitBackUpAirInd = BlueTempsInitBackUpAirInd + 1
        BlueTempsInitBackUpAir[BlueTempsInitBackUpAirInd] = GROUP:NewTemplate(Template, coalition.side.BLUE, Group.Category.AIRPLANE, country.id.CJTF_BLUE)
        env.info("TTI - Adding blue backup aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnTempsInitBackUpAirCv)
	do coalition.addGroup(country.id.CJTF_BLUE, Group.Category.AIRPLANE, Template)
		BlueTempsInitBackUpAirCvInd = BlueTempsInitBackUpAirCvInd + 1
		BlueTempsInitBackUpAirCv[BlueTempsInitBackUpAirCvInd] = GROUP:NewTemplate(Template, coalition.side.BLUE, Group.Category.AIRPLANE, country.id.CJTF_BLUE)
		env.info("TTI - Adding blue backup cv aircraft " .. Template.name .. " template to the database." )
end

for i, Template in pairs(SpawnBlueTempsInitLogisticsAir)
	do coalition.addGroup(country.id.CJTF_BLUE, Group.Category.AIRPLANE, Template)
		BlueTempsInitLogisticsAirInd = BlueTempsInitLogisticsAirInd + 1
		BlueTempsInitLogisticsAir[BlueTempsInitLogisticsAirInd] = GROUP:NewTemplate(Template, coalition.side.BLUE, Group.Category.AIRPLANE, country.id.CJTF_BLUE)
		env.info("TTI - Adding blue logistics aircraft " .. Template.name .. " template to the database." )
end

env.info("TTI - Database Red Air Spawner Initialized!")
tti_red_air_database_loaded = true