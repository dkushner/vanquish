private ["_pos", "_flare", "_terrain", "_i"];

for "_i" from 0 to 4 do
{
	_pos = [getMarkerPos "SupportMarker", 100] call BIS_fnc_randomPosTrigger;
	_flare = "F_40mm_White" createVehicle _pos;
	_terrain = getTerrainHeightASL _pos;
	_flare setPos [_pos select 0, _pos select 1, _terrain + 150];

	sleep 10;
};

