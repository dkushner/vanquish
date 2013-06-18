if(!isServer) exitWith {};

// Set Up Joins In Progress


// Mission tracking variables.
van_mt_clear = false;
van_mt_secondary_clear = false;

van_status_trigger = objNull;

van_mt_inf_threshold = 5;
van_mt_armor_threshold = 0;
van_mt_motor_threshold = 0;


// Ground Infantry Group Compositions
van_infantry_groups = 
[
	["Sentry", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call van_fn_getConfigGroup],
	["Squad", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call van_fn_getConfigGroup],
	["WeaponSquad", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad_Weapons")] call van_fn_getConfigGroup],
	["Fireteam", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call van_fn_getConfigGroup],
	["FireteamAT", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam_AT")] call van_fn_getConfigGroup],
	["Support", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Support" >> "OI_support_CLS")] call van_fn_getConfigGroup],
	["Engineer", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Support" >> "OI_support_ENG")] call van_fn_getConfigGroup],
	["Ordinance", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Support" >> "OI_support_EOD")] call van_fn_getConfigGroup]
];

// Amphibious Infantry Group Compositions
van_amphibious_groups = 
[
	["DiveTeam", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "SpecOps" >> "OI_diverTeam")] call van_fn_getConfigGroup],
	["DiveTeamRHIB", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "SpecOps" >> "OI_diverTeam_Boat")] call van_fn_getConfigGroup]
];

// Motorized Infantry Group Compositions
van_motor_groups = 
[
	["Motorized", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Motorized_MTP" >> "OIA_MotInfTeam")] call van_fn_getConfigGroup],
	["MotorizedAT", [(configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Motorized_MTP" >> "OIA_MotInf_AT")] call van_fn_getConfigGroup]
];

waitUntil { count van_main_targets > 0 };
execVM "Server\van_next_main_target.sqf";
