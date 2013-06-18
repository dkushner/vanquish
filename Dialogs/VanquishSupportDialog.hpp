class VanquishSupportDialog
{
	idd = -1;
	movingEnable = 1;
	onLoad = "[] spawn van_dialog_initControls;";
	controlsBackground[] = { };
	objects[] = { };

	class controls
	{
		class Background: IGUIBack
		{
			idc = 2200;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 18.5 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.5};
		};

		class TabBackground: IGUIBack
		{
			idc = 2201;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.5};
		};

		class SupportTab: RscButton
		{
			idc = 1600;
			text = "Support"; //--- ToDo: Localize;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 7 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.8,0.8,0.8,1};
			colorActive[] = {0.9,0.9,0.9,1};
		};

		class GroupTab: RscButton
		{
			idc = 1601;
			text = "Group Management"; //--- ToDo: Localize;
			x = 9 * GUI_GRID_W + GUI_GRID_X;
			y = 23 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.8,0.8,0.8,1};
			colorActive[] = {0.9,0.9,0.9,1};
		};

		class FrameMapDisplay: RscMapControl
		{
			idc = 1800;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 13.5 * GUI_GRID_H;
		};

		class SupportText: RscText
		{
			idc = 1000;
			text = "Support"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.5};
		};

		class SelectSupportText: RscText
		{
			idc = 1001;
			text = "Select support location."; //--- ToDo: Localize;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class SupportTypeText: RscText
		{
			idc = 1002;
			text = "Support Type:"; //--- ToDo: Localize;
			x = 19 * GUI_GRID_W + GUI_GRID_X;
			y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0};
		};
		class SupportOptionText: RscText
		{
			idc = 1003;
			text = "Support Option:"; //--- ToDo: Localize;
			x = 19 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 9 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};

		class SupportTypeCombo: RscCombo
		{
			idc = 2100;
			x = 27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};

		class SupportOptionCombo: RscCombo
		{
			idc = 2101;
			x = 27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};

		class FireButton: RscButton
		{
			idc = 1602;
			text = "Fire"; //--- ToDo: Localize;
			x = 19 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 3 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0.8,0.8,0.8,1};
			colorActive[] = {0.9,0.9,0.9,1};
		};
	};
};

