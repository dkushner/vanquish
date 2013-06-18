private ["_target"];
if(!isServer) exitWith{};

_target = van_main_targets select van_mt_index;
van_completed_targets set [count van_completed_targets, _target];
van_main_targets set [van_mt_index, -1];

diag_log format ["MainTargets: %1", van_main_targets];
diag_log format ["CompletedTargets: %1", van_completed_targets];

execVM "Server\van_next_main_target.sqf";