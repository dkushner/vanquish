/*
	FILE
	init_client

	Description:
		The name of this file is a bit of a misnomer. It is in fact only executed 
		during server initialization (mission initialization if non-dedicated). It
		handles the setting up of JIP and player connection events to ensure that
		players connecting late to the game are set up the same way as those that 
		joined before initialization.

*/

van_client_setup = 
{
	player addAction ["<t color='#9900CC'>Vanquish Command</t>", "Actions\van_act_command_menu.sqf"];
	player addEventHandler ["respawn", 
	{
		player addAction ["<t color='#9900CC'>Vanquish Command</t>", "Actions\van_act_command_menu.sqf"];
	}];
};

publicVariable "van_client_setup";
[[], "van_client_setup", true, true] call BIS_fnc_MP;
