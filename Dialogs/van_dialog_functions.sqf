van_dialog_initControls = 
{
	disableSerialization;
	{
		lbAdd[2100, _x select 0];
	} forEach van_support_options;
	lbSetCurSel [2100, 0];
};

van_dialog_setSupportMarker = 
{
	private ["_control", "_idc", "_strike_pos", "_support_type", "_support", "_designator"];

	disableSerialization;
	_control = _this select 0;
	_strike_pos = (_control select 0) ctrlMapScreenToWorld [_control select 2, _control select 3];
	_support_type = van_support_options select (lbCurSel 2100);
	_support = (_support_type select 1) select (lbCurSel 2101);

	"SupportMarker" setMarkerPosLocal _strike_pos;
	"SupportMarker" setMarkerShapeLocal "ELLIPSE";
	"SupportMarker" setMarkerBrushLocal "FDiagonal";
	"SupportMarker" setMarkerColorLocal "ColorRed"; 
	"SupportMarker" setMarkerTypeLocal "Warning";
	"SupportMarker" setMarkerSizeLocal [_support select 2, _support select 2];

	execVM (_support select 1);
};

van_dialog_setSupportType =
{
	private ["_type"];

	disableSerialization;
	_type = van_support_options select (lbCurSel 2100);
	lbClear 2101;
	{
		lbAdd [2101, _x select 0];
	} forEach (_type select 1);
	lbSetCurSel [2101, 0];
};


