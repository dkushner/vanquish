class VanquishDialog
{
	idd = -1;
	movingEnable = false;
	
	controlsBackground[] = { };
	objects[] = { };
	
	class controls
	{
		class Background: IGUIBack
		{
			idc = 2200;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
		};

		class ButtonCallSupport: RscButton
		{
			idc = 1600;
			text = "Call Support"; //--- ToDo: Localize;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Call Support"; //--- ToDo: Localize;
		};

		class ButtonRecruitSoldiers: RscButton
		{
			idc = 1601;
			text = "Recruit Soldier's"; //--- ToDo: Localize;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Recruit Soldier's"; //--- ToDo: Localize;
		};

		class ButtonJoinGroup: RscButton
		{
			idc = 1602;
			text = "Join Group"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Join Player Group"; //--- ToDo: Localize;
		};

		class ButtonLeaveGroup: RscButton
		{
			idc = 1603;
			text = "Leave Group"; //--- ToDo: Localize;
			x = 31 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Leave Current Group"; //--- ToDo: Localize;
		};
	};
};