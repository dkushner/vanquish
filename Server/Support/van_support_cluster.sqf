private ["_pos", "_terrain", "_bomb"];

_pos = getMarkerPos "SupportMarker";
_terrain = getTerrainHeightASL _pos;
_pos = [_pos select 0, _pos select 1, _terrain + 300];
_bomb = createVehicle ["Bomb", _pos, [], 0, "FLY"];
_bomb setVelocity[0, 0, -50];