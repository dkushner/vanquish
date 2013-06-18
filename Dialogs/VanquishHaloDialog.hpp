class HaloDialog
{
	idd = -1;
	movingEnable = 1;
	controlsBackground[] = { };
	objects[] = { };

	class controls
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 35 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
		};

		class RscText_1000: RscText
		{
			idc = 1000;
			text = "H.A.L.O"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 35 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.5};
		};

		class DisplayMap: RscMapControl
		{
			idc = 1800;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 4 * GUI_GRID_H + GUI_GRID_Y;
			w = 33 * GUI_GRID_W;
			h = 16 * GUI_GRID_H;
		};

		class JumpButton: RscButton
		{
			idc = 1600;
			text = "Jump"; //--- ToDo: Localize;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
	};
};