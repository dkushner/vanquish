private ["_vehicle"];

_vehicle = _this select 0;
_vehicle addEventHandler ["getin",
{
	private ["_pilot", "_slot", "_action"];

	_pilot = _this select 2;
	_slot = _this select 1;

	if(isPlayer _pilot && _slot == "driver") then
	{
		_action = _pilot addAction ["<t color = '#FF0000'>Lift Vehicle</t>", "Actions\van_act_lift_freight.sqf"];
		_pilot setVariable ["LiftAction", _action];
	};
}];

_vehicle addEventHandler ["getout", 
{
	private ["_pilot", "_slot"];

	_pilot = _this select 2;
	_slot = _this select 1;

	if(isPlayer _pilot && _slot == "driver") then
	{
		_pilot removeAction (_pilot getVariable "LiftAction");
	};
}];