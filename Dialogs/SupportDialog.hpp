class SupportDialog
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
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 42 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};

		class HeaderSupport: RscStructuredText
		{
			idc = 1100;
			text = "Support"; //--- ToDo: Localize;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {-1,-1,-1,1};
		};

		class FrameMapDisplay: RscMapControl
		{
			idc = 1800;
			x = 0.5 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 20 * GUI_GRID_W;
			h = 20 * GUI_GRID_H;
		};

		class ComboSupportType: RscCombo
		{
			idc = 2100;
			x = 31 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onLBSelChanged = "_this spawn van_dialog_setSupportType;";
		};

		class TextSupportType: RscStructuredText
		{
			idc = 1101;
			text = "Support Type:"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0};
		};

		class TextSupportOptions: RscStructuredText
		{
			idc = 1102;
			text = "Support Options:"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0};
		};

		class ComboSupportOptions: RscCombo
		{
			idc = 2101;
			x = 31 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};

		class ButtonCancelSupport: RscButton
		{
			idc = 1600;
			text = "Cancel Support"; //--- ToDo: Localize;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};

		class ButtonCallSupport: RscButton
		{
			idc = 1601;
			text = "Call Support"; //--- ToDo: Localize;
			x = 31.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
	};
};