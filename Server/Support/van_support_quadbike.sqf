private ["_pos", "_vehicle", "_terrain"];

_pos = getMarkerPos "SupportMarker";
_vehicle = createVehicle ["B_Quadbike_F", _pos, [], 0, "FLY"];
_terrain = getTerrainHeightASL _pos;
_vehicle setPos [_pos select 0, _pos select 1, _terrain + 150];

_vehicle spawn 
{
	while{((getPosATL _this) select 2) > 5} do
	{
		_this setVelocity [0, 0, -15];
		sleep 0.5;
	};
};
