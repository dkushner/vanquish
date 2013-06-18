private ["_vehicle_list", "_last_resupply"];

_vehicle_list = _this select 0;

{
	_last_resupply = _x getVariable ["LastResupply", 0];

	if((time - _last_resupply) > 30) then
	{
		_x engineOn false;
		_x setFuel 0;

		[_x] spawn
		{
			_vec = _this select 0;

			_itr = 0;
			{
				_vec vehicleChat "Reloading " + _x;
				_itr = _itr + 1;
				_vec setVehicleAmmo (_itr / (count weapons _vec));
				sleep 1;
			} forEach (weapons _vec);

			_vec vehicleChat "Repairing fuselage damage...";
			sleep 1;
			_vec setVehicleArmor 1;

			_vec vehicleChat "Refueling vehicle...";
			sleep 1;
			_vec setFuel 1;

			_vec vehicleChat "Service complete. Chocks away. Good hunting!";
		};
	} 
	else 
	{
		_x vehicleChat "This vehicle has been resupplied too recently.";
	};
} forEach _vehicle_list;
