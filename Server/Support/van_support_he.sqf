/*
	FILE
	van_support_he

	Description:
		Support routine responsible for launching a ten-round, high-explosive
		artillery barrage at the target location. This function takes no parameters
		as in order for its execution to take place, the local marker "SupportMarker"
		must already exist. We may therefore safely access this marker by name.
*/
private ["_pos", "_i"];

_pos = getMarkerPos "SupportMarker";

[West, "HQ"] sideChat "Loading 10 round HE fire mission. Stand by.";
sleep 3;
[West, "HQ"] sideChat "Firing for effect. Shot out.";

sleep 7;
for "_i" from 0 to 9 do
{
	_pos = [_pos, 20] call BIS_fnc_randomPosTrigger;
	"R_60mm_HE" createVehicle _pos;
	sleep 2;
};