private ["_pilot", "_vehicle", "_freight"];

_pilot = _this select 1;
_vehicle = vehicle _pilot;
_freight = _vehicle getVariable "Freight";
_freight setVariable ["InTow", false];

detach _freight;

{ _pilot removeAction _x } forEach (_pilot getVariable "SpoolActions");
_pilot removeAction (_this select 2);
_pilot addAction ["<t color = '#FF0000'>Lift Vehicle</t>", "Actions\van_act_lift_freight.sqf"];