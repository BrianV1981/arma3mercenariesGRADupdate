// Made with Chat GPT 7-21-2024
private "_this";
_this = _this select 0;

// Ensure the script runs only on the server
if (!isServer) exitWith {};

// Clear existing inventory
clearMagazineCargoGlobal _this;
clearWeaponCargoGlobal _this;
clearItemCargoGlobal _this;
clearBackpackCargoGlobal _this;

// Add items to the container
_this addItemCargoGlobal ["B_UavTerminal", 5];   // 10000
_this addBackpackCargo ["B_UAV_01_backpack_F", 10];   //5000
_this addBackpackCargo ["B_Respawn_TentDome_F", 10];   // 500cr
_this addBackpackCargo ["B_Respawn_Sleeping_bag_blue_F", 20];   // 100cr
_this addBackpackCargo ["B_LegStrapBag_black_F", 5];   // 0cr
_this addItemCargoGlobal ["30Rnd_9x21_Mag_SMG_02_Tracer_Red", 100];   // 0cr
_this addItemCargoGlobal ["SMG_05_F", 10];   // 0cr
_this addItemCargoGlobal ["optic_ACO_grn_smg", 10];   // 0cr
_this addItemCargoGlobal ["V_Rangemaster_belt", 10];   // 0cr
_this addItemCargoGlobal ["U_Rangemaster", 10];   // 0cr
_this addItemCargoGlobal ["ACE_CableTie", 100];   // 0cr
_this addItemCargoGlobal ["ACE_EntrenchingTool", 10];  // 0cr
_this addItemCargoGlobal ["ACE_wirecutter", 10];       // 0cr
_this addItemCargoGlobal ["ACE_Sandbag_empty", 100];   // 10cr

// Call grad_fortifications functions to add items with their specific functions
[_this, 'ACE_ConcertinaWireCoil', 20] call grad_fortifications_fnc_addFort; // 10cr
[_this, 'Land_HBarrier_5_F', 10] call grad_fortifications_fnc_addFort;        // 1000cr
[_this, 'Land_HBarrierWall6_F', 10] call grad_fortifications_fnc_addFort;     // 800cr
[_this, 'Land_HBarrierWall_corner_F', 8] call grad_fortifications_fnc_addFort; // 1500cr
[_this, 'Land_CncWall4_F', 30] call grad_fortifications_fnc_addFort;         // 500cr
[_this, 'Land_BagBunker_Small_F', 4] call grad_fortifications_fnc_addFort;   // 2000cr
[_this, 'Land_BagBunker_Tower_F', 2] call grad_fortifications_fnc_addFort;   // 200cr
[_this, 'ACE_TacticalLadder', 4] call grad_fortifications_fnc_addFort;        // 20cr
[_this, 'Land_TentLamp_01_standing_F', 20] call grad_fortifications_fnc_addFort; // 50cr
[_this, 'Flag_US_F', 1] call grad_fortifications_fnc_addFort;                // 50cr
[_this, 'Flag_POWMIA_F', 1] call grad_fortifications_fnc_addFort;                // 50cr
[_this, 'WaterPump_01_forest_F', 1] call grad_fortifications_fnc_addFort;       // 100cr
[_this, 'Land_WoodenCrate_01_F', 2] call grad_fortifications_fnc_addFort;    // 250cr
[_this, 'CargoNet_01_box_F', 5] call grad_fortifications_fnc_addFort;        // 200cr
[_this, 'ACE_medicalSupplyCrate', 4] call grad_fortifications_fnc_addFort;   // 1000cr
[_this, 'Land_PaperBox_01_small_closed_brown_food_F', 4] call grad_fortifications_fnc_addFort;   // 200cr
[_this, 'Land_PaperBox_01_small_closed_brown_F', 2] call grad_fortifications_fnc_addFort;   // 10cr
[_this, 'ACE_Box_Chemlights', 2] call grad_fortifications_fnc_addFort;       // 0cr
[_this, 'Box_Wps_F', 2] call grad_fortifications_fnc_addFort;   // 25cr
[_this, 'Land_RoadBarrier_01_F', 2] call grad_fortifications_fnc_addFort;   //100
[_this, 'Land_HelipadCircle_F', 1] call grad_fortifications_fnc_addFort;   // 50cr
[_this, 'Land_BagFence_Round_F', 20] call grad_fortifications_fnc_addFort;    // 20cr
[_this, 'Land_BagFence_Long_F', 20] call grad_fortifications_fnc_addFort;    // 20cr
[_this, 'Land_CzechHedgehog_01_new_F', 20] call grad_fortifications_fnc_addFort;    // 100cr
[_this, 'Land_RepairDepot_01_green_F', 1] call grad_fortifications_fnc_addFort;    // 25000cr
[_this, 'B_Slingload_01_Medevac_F', 1] call grad_fortifications_fnc_addFort;    // 10000cr
[_this, 'B_Slingload_01_Fuel_F', 1] call grad_fortifications_fnc_addFort;  // 10000cr
[_this, 'B_Slingload_01_Ammo_F', 1] call grad_fortifications_fnc_addFort;  // 25000cr