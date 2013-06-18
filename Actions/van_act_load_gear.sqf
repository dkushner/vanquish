private ["_player"];

// Clear Player Inventory
_player = _this select 1;
removeAllContainers _player;
removeAllWeapons _player;
removeAllAssignedItems _player;

// Add Containers
_player addUniform (player getVariable "UniformType");
{
	 [_player, _x] call BIS_fnc_invAdd;
} forEach (player getVariable "UniformContents");

_player addBackPack (player getVariable "BackpackType");
{
	 [_player, _x] call BIS_fnc_invAdd;
} forEach (player getVariable "BackpackContents");

_player addVest (player getVariable "VestType");
{
	 [_player, _x] call BIS_fnc_invAdd;
} forEach (player getVariable "VestContents");

// Add Weapons
_player addWeapon (player getVariable "PrimaryType");
{
	_player addPrimaryWeaponItem _x;
} forEach (player getVariable "PrimaryContents");

_player addWeapon (player getVariable "SecondaryType");
{
	_player addSecondaryWeaponItem _x;
} forEach (player getVariable "SecondaryContents");

_player addWeapon (player getVariable "HandgunType");
{
	_player addHandgunItem _x;
} forEach (player getVariable "HandgunContents");

{
	_player addItem _x;
	_player addHeadgear _x;
	_player addGoggles _x;
	_player assignItem _x;
} forEach (player getVariable "MiscItems");
