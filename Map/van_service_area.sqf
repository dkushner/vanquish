private ["_trigger", "_vehicle_type"];

_trigger = _this select 0;
_vehicle_type = _this select 1;

if(!(_vehicle_type in ["Helicopter", "Car", "Plane"])) exitWith {};

private ["_trigger_condition", "_trigger_action"];
// Reconfigure the trigger.
_trigger_condition = "( """ + _vehicle_type + """ countType thislist > 0) && " +
					 "(count (thislist unitsBelowHeight 1) > 0) && " +
					 "((speed (thislist select 0)) < 10)";
_trigger_action = "[thislist] execVM ""Common\van_resupply_vehicle.sqf"";";

_trigger setTriggerStatements [_trigger_condition, _trigger_action, ""];

