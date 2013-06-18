van_main_targets = [];
van_completed_targets = [];

// Support Type Definitions
// First Order: Type of drop requested.
// Second Order: All specific drops available to that type.
// Third Order: Name, executed script and target area for each
//				specific drop. Zero indicates pinpoint drop.
van_support_options = 
[
	["Supply Drop",
		[
			["Ifrit Light Armor", "Server\Support\van_support_ifrit.sqf", 2],
 			["Tactical Quadbike", "Server\Support\van_support_quadbike.sqf", 2],
 			["Ammobox", "Server\Support\van_support_ammo.sqf", 2]
		]
 	], 
 	["CAS",
 		[
 			["Gunship Support", "Server\Support\van_support_gunship.sqf", 200],
			["AGM Strike", "Server\Support\van_support_agm.sqf", 150],
			["GAU-19 Strafing", "Server\Support\van_support_strafing.sqf", 150],
			["CBU-100 Cluster", "Server\Support\van_support_cluster.sqf", 30]
 		]
	],
	["Artillery",
		[
			["Illumination", "Server\Support\van_support_illumination.sqf", 20], 
			["Smoke", "Server\Support\van_support_smoke.sqf", 20],
			["HE Barrage", "Server\Support\van_support_he.sqf", 25],
			["SADARM", "Server\Support\van_support_sadarm.sqf", 50],
			["ADAM", "Server\Support\van_support_adam.sqf", 50]
		]
	]
];

createMarkerLocal ["SupportMarker", [0, 0, 0]];
"SupportMarker" setMarkerBrush "Solid";