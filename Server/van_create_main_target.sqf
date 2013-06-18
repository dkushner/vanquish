private ["_position", "_area"];
if(!isServer) exitWith {};

_position = _this select 0;
_area = _this select 1;

diag_log format ["Creating main target at %1.", _position];

private ["_i", "_group", "_group_comp", "_inside_point"];
for "_i" from 0 to 4 do
{
	_inside_point = [_position, _area] call BIS_fnc_randomPosTrigger;

	if(surfaceIsWater _inside_point) then
	{
		hint "Amphibious groups in the AO.";
		_group_comp = (van_amphibious_groups call BIS_fnc_selectRandom) select 1;
	} else {

		if(isOnRoad _inside_point) then
		{
			_group_comp = (van_motorized_groups call BIS_fnc_selectRandom) select 1;
		} else {
			_group_comp = (van_infantry_groups call BIS_fnc_selectRandom) select 1;
		};
	};

	_group = [_inside_point, east, _group_comp] call BIS_fnc_spawnGroup;

	if(random 10 < 7) then
	{
		[_group, _inside_point] call BIS_fnc_taskDefend;
	} else {
		[_group, _inside_point, 50] call BIS_fnc_taskPatrol;
	};
};