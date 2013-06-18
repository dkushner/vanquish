private ["_vehicle", "_direction", "_freight", "_anchor"];

_vehicle = vehicle (_this select 0);
_direction = _this select 3;
_freight = _vehicle getVariable "Freight";

_anchor = _freight distance _vehicle;
_anchor = (-1 * _anchor) + (_direction * 3);
_anchor = [_anchor, -25, -5] call van_fn_clampBetween;

detach _freight;
_freight attachTo [_vehicle, [0, 0, _anchor]];
