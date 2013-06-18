private ["_player"];

_player = _this select 1;

// Save Items 
player setVariable["BackpackType", typeof (unitBackPack _player)];
player setVariable["BackpackContents", backpackItems _player];

player setVariable["VestType", vest _player];
player setVariable["VestContents",vestItems _player];

player setVariable["UniformType", uniform _player];
player setVariable["UniformContents", uniformItems _player];

player setVariable["PrimaryType", primaryWeapon _player];
player setVariable["PrimaryContents", primaryWeaponItems _player];

player setVariable["SecondaryType", secondaryWeapon _player];
player setVariable["SecondaryContents", secondaryWeaponItems _player];

player setVariable["HandgunType", handgunWeapon _player];
player setVariable["HandgunContents", handgunItems _player];

player setVariable["MiscItems", assignedItems _player];
