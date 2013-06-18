/**
		van_infantry_group

		Description: 

			Adds a unit group to our database of aliased unit groups (van_infantry_groups). Aliased
			groups can be easily set up in the editor by first creating a group on the map, ensuring
			that all group members are associated with one central leader, then executing this script
			in the initialization field of the leader. The leader's name will be assumed to be the 
			alias of this group. 

		Parameters:
			
			_this -- Unit member of group calling initialization.
			_groupID -- String alias of the group.
 */

private ["_leader", "_grpAlias"];
if(!isServer) exitWith {};

_leader = _this select 0;
_grpAlias = _this select 1;

_units = units (group _leader);
_classlist = [];

{
	_classlist set [count _classlist, (typeof _x)];
} forEach _units;

_grpTypes = missionNamespace getVariable "van_infantry_groups";
missionNamespace setVariable ["van_infantry_groups", (_grpTypes + [[_grpAlias, _classlist]])];
