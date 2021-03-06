private ["_mission_target", "_mission_pos", "_mission_area", "_mission_name"];
if(!isServer) exitWith {};

// Select a new main target at random then push this
// updated index to clients. They're not doing anything
// with it yet.
van_mt_index = floor random (count van_main_targets);

van_update_target = false;
van_main_ready = false;

// Get all of our mission data.
_mission_target = van_main_targets select van_mt_index;
_mission_name = _mission_target select 0;
_mission_pos = _mission_target select 1;
_mission_area = _mission_target select 2;


private ["_trigger_condition", "_trigger_action", "_builder"];
// Create local status trigger for the mission area. This trigger is 
// present only to the server and simply checks to ensure the target
// area is set up correctly before instructing clients to update.
van_status_trigger = createTrigger ["EmptyDetector", _mission_pos];
van_status_trigger setTriggerArea _mission_area;
van_status_trigger setTriggerActivation ["EAST", "PRESENT", false];

_trigger_condition = "(""Man"" countType thislist >= van_mt_inf_threshold)";

_trigger_action = "van_mt_clear = false;" + 
				  "publicVariable ""van_mt_clear"";" +
				  "van_update_target = true;" + 
				  "deleteVehicle van_status_trigger;";

van_status_trigger setTriggerStatements [_trigger_condition, _trigger_action, ""];

// Since main target set up can take a considerable amount of time, we 
// simply tell it to execute asynchronously and spin while it completes.
[_mission_pos, _mission_area] execVM "Server\van_create_main_target.sqf";
waitUntil { van_update_target };

// Create a local trigger that is activated when mission objectives have
// been completed. More specifically, it is activated when the number of 
// target units of each class falls below the threshold while all secondary
// objectives have been completed.
van_completion_trigger = createTrigger ["EmptyDetector", _mission_pos];
van_completion_trigger setTriggerArea _mission_area;
van_completion_trigger setTriggerActivation ["EAST", "PRESENT", false];

_trigger_condition = "(""Man"" countType thislist <= van_mt_inf_threshold) &&" + 
					 "(""Tank"" countType thislist <= van_mt_armor_threshold) &&" +
					 "(""Car"" countType thislist <= van_mt_motor_threshold)";

_trigger_action = "_handle = [] execVM ""Server\van_clear_main_target.sqf""";

van_completion_trigger setTriggerStatements [_trigger_condition, _trigger_action, ""];

// Set up a global marker after the next mission has been successfully set up.
["MainTarget", van_completion_trigger] call BIS_fnc_markerToTrigger;