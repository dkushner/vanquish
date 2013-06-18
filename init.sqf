diag_log format ["~~~~~~~~~~~~~~~~~~ %1 ~~~~~~~~~~~~~~~~~~", missionName];

enableSaving[false, false];
enableTeamSwitch false;

#include "init_common.sqf"

V_INIT = false;
V_CLIENT = false;
V_SERVER = false;
V_JIP = false;
V_SPE = false;
V_MP = false;

if(isMultiplayer) then { V_MP = true; };
if(isServer) then
{
	V_SERVER = true;
	if(!isDedicated) then
	{
		V_CLIENT = true;
		V_SPE = true;
		[] spawn 
		{
			waitUntil { !isNull player };
			V_INIT = true;
		};
	} else {
		V_INIT = true;
	};
} else {
	V_CLIENT = true;
	if(isNull player) then
	{
		V_JIP = true;
		[] spawn
		{
			waitUntil { !isNull player };
			V_INIT = true;
		};
	} else {
		V_INIT = true;
	};	
};

if(V_CLIENT) then
{
	[] spawn
	{
		waitUntil { V_INIT };
		execVM "init_tasks.sqf";
	};
};

if(isNil "van_fn_compiled") then
{
	call compile preprocessFileLineNumbers "Dialogs\van_dialog_functions.sqf";
	call compile preprocessFileLineNumbers "Common\van_util_functions.sqf";
};

#include "init_server.sqf"
#include "init_client.sqf"


