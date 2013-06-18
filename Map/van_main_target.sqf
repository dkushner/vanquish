private ["_trigger", "_target_data"];

_trigger = _this select 0;

_target_data = [];
_target_data set [0, triggerText _trigger];
_target_data set [1, getPos _trigger];
_target_data set [2, triggerArea _trigger];

van_main_targets = van_main_targets + [_target_data];
deleteVehicle _trigger;
