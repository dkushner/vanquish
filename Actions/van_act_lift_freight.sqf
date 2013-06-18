private ["_freight", "_pilot", "_vehicle", "_action"];

_pilot = _this select 0;
_vehicle = vehicle _pilot;
_freight = nearestObject [_vehicle, "Car"];
_action = _this select 2;

if(_freight getVariable "InTow") exitWith {};
if(not isNull _freight) then
{
	private ["_spool_up", "_spool_down"];

	_freight attachTo [_vehicle, [0, 0, -1 * (_freight distance _vehicle) - 5]];
	_freight setVariable ["InTow", true];

	_vehicle setVariable ["Freight", _freight];
	_pilot removeAction _action;

	_spool_up = _pilot addAction ["<t color = '#00CC00'>Spool Up</t>", "Actions\van_act_spool_freight.sqf", 1];
	_spool_down = _pilot addAction ["<t color = '#00CC00'>Spool Down</t>", "Actions\van_act_spool_freight.sqf", -1];
	
	_pilot setVariable ["SpoolActions", [_spool_up, _spool_down]];
	_pilot addAction ["<t color = '#FF0000'>Drop Vehicle</t>", "Actions\van_act_drop_freight.sqf"];
};