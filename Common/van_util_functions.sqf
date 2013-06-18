van_fn_compiled = false;

van_fn_getConfigGroup = 
{
	private ["_config", "_grpList"];

	_config = _this select 0;
	_grpList = [];

	if(isClass _config) then
	{
		for "_i" from 0 to (count _config - 1) do
		{
			_elem = _config select _i;
			if (isClass _elem) then { _grpList set [count _grpList, getText (_elem >> "vehicle")]};
		};	
	};
	_grpList
};

van_fn_clampBetween = 
{
	private ["_val", "_min", "_max"];

	_val = _this select 0;
	_min = _this select 1;
	_max = _this select 2;

	if(_val > _max) then
	{
		_val = _max;
	} else {
		if(_val < _min) then
		{
			_val = _min;
		};
	};
	_val
};

van_fn_compiled = true;