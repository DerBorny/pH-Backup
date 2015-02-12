#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Polizei-Anwärter-Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F",nil,15000],
						["30Rnd_9x21_Mag",nil,2500],
						["optic_Aco_smg",nil,3000],
						["optic_ACO_grn_smg",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_H",nil,275],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["MineDetector",nil,3000],
						["B_UavTerminal",nil,2000],
						["B_UAV_01_backpack_F",nil,20000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitäter!"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_Bergen_mcamo",nil,3000],
						["U_B_HeliPilotCoveralls",nil,10]
					]
				];
			};
		};
	};
//Rang 1
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 1): {"Du hast nicht den nötigen Polizeirang! (Wachtmeister)"};
			default
			{
				["Wachtmeister-Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],	
						["30Rnd_9x21_Mag",nil,250],						
						["arifle_sdar_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_DMS",nil,2500],
						["optic_LRPS",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["MineDetector",nil,3000],
						["B_UavTerminal",nil,2000],
						["B_UAV_01_backpack_F",nil,20000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
//Rang 2
	case "cop_rang2":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du hast nicht den nötigen Polizeirang! (Polizeikommissar)"};
			default
			{
				["Polizeikommissar-Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],	
						["30Rnd_9x21_Mag",nil,250],	
						["arifle_sdar_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["SMG_02_ACO_F",nil,30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Mk20C_ACO_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,3000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_DMS",nil,2500],
						["optic_LRPS",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["MineDetector",nil,3000],
						["B_UavTerminal",nil,2000],
						["B_UAV_01_backpack_F",nil,20000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};

//Rang 3
	case "cop_rang3":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du hast nicht den nötigen Polizeirang! (Polizeikoberkommissar)"};
			default
			{
				["Polizeioberkommissar-Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],	
						["30Rnd_9x21_Mag",nil,250],						
       					["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["arifle_Mk20C_ACO_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,3000],
						["srifle_EBR_ACO_F",nil,70000],
						["20Rnd_762x51_Mag",nil,3000],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,6000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_DMS",nil,2500],
						["optic_SOS",nil,20000],
						["optic_Nightstalker",nil,80000],
						["optic_tws",nil,80000],
						["optic_LRPS",nil,2500],
						["muzzle_snds_H",nil,2750],
						["Medikit",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["MineDetector",nil,3000],
						["B_UavTerminal",nil,2000],
						["B_UAV_01_backpack_F",nil,20000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};

	
//Rang 4	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den nötigen Polizeirang!"};
			default
			{
				["Polizeioberkommissar-Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],	
						["30Rnd_9x21_Mag",nil,250],	
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,6000],
						["srifle_EBR_ACO_F",nil,70000],
						["20Rnd_762x51_Mag",nil,3000],
						["LMG_Mk200_F",nil,80000],
						["200Rnd_65x39_cased_Box",nil,7500],
						["arifle_MX_GL_F",nil,75000],
						["30Rnd_65x39_caseless_mag",nil,4000],
						["1Rnd_HE_Grenade_shell",nil,5000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,5000],
						["UGL_FlareRed_F",nil,5000],
						["arifle_Mk20C_ACO_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,3000],
						["optic_SOS",nil,20000],
						["optic_Nightstalker",nil,80000],
						["optic_tws",nil,80000],
						["launch_RPG32_F",nil,190000],
						["RPG32_F",nil,9000],
						["RPG32_HE_F",nil,10000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_L",nil,3750],
						["muzzle_snds_M",nil,4750],
						["muzzle_snds_B",nil,5750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["O_Mortar_01_weapon_F",nil,2],
						["O_Mortar_01_support_F",nil,2]
						
					]
				];
			};
		};
	};
	
	//Rang 4	
	case "cop_rang4":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den nötigen Polizeirang!"};
			default
			{
				["Polizeioberkommissar-Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],	
						["30Rnd_9x21_Mag",nil,250],	
						["srifle_EBR_ACO_F",nil,70000],
						["20Rnd_762x51_Mag",nil,3000],
						["LMG_Mk200_F",nil,80000],
						["200Rnd_65x39_cased_Box",nil,7500],
						["arifle_MX_GL_F",nil,75000],
						["30Rnd_65x39_caseless_mag",nil,4000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,5000],
						["UGL_FlareRed_F",nil,5000],
						["arifle_Mk20C_ACO_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,3000],
						["optic_tws",nil,80000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_L",nil,3750],
						["muzzle_snds_M",nil,4750],
						["muzzle_snds_B",nil,5750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["MineDetector",nil,3000],
						["B_UavTerminal",nil,2000],
						["B_UAV_01_backpack_F",nil,20000],
						["NVGoggles",nil,2000]
						
					]
				];
			};
		};
	};
	
//Rang 5	
	case "cop_rang5":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du hast nicht den nötigen Polizeirang! (Polizeihauptkommissar)"};
			default
			{
				["Polizeioberkommissar-Shop",
					[
					    ["hgun_P07_snds_F",nil,2000],
						["16Rnd_9x21_Mag",nil,50],	
						["30Rnd_9x21_Mag",nil,250],	
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,6000],
						["srifle_EBR_ACO_F",nil,70000],
						["20Rnd_762x51_Mag",nil,3000],
						["LMG_Mk200_F",nil,80000],
						["200Rnd_65x39_cased_Box",nil,7500],
						["arifle_MX_GL_F",nil,75000],
						["30Rnd_65x39_caseless_mag",nil,4000],
						["1Rnd_HE_Grenade_shell",nil,5000],
						["1Rnd_SmokeBlue_Grenade_shell",nil,5000],
						["UGL_FlareRed_F",nil,5000],
						["arifle_Mk20C_ACO_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,3000],
						["launch_RPG32_F",nil,190000],
						["RPG32_F",nil,9000],
						["RPG32_HE_F",nil,10000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag",nil,200],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_SOS",nil,20000],
						["optic_Nightstalker",nil,80000],
						["optic_tws",nil,80000],
						["muzzle_snds_H",nil,2750],
						["muzzle_snds_L",nil,3750],
						["muzzle_snds_M",nil,4750],
						["muzzle_snds_B",nil,5750],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["MineDetector",nil,3000],
						["B_UavTerminal",nil,2000],
						["B_UAV_01_backpack_F",nil,20000],
						["NVGoggles",nil,2000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["O_Mortar_01_weapon_F",nil,2],
						["O_Mortar_01_support_F",nil,2],
						["O_HMG_01_weapon_F",nil,2]
						
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast kein Banditentraining!"};
			default
			{
				["Banditen-Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,1500],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,1100],
						["arifle_MXM_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,2000],
						["srifle_LRR_F",nil,200000],
						["7Rnd_408_Mag",nil,6000],
						["optic_ACO",nil,3500],
						["optic_ACO_grn",nil,3500],
						["optic_MRCO",nil,20000],
						["optic_DMS",nil,45000],
						["optic_NVS",nil,100000],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500]

					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,1100],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["Rangefinder",nil,90000],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles_OPFOR",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "genstore2":
	{
		["Tankstellen-Shop",
			[
				["Binocular",nil,15000],
				["ItemGPS",nil,2500],
				["ToolKit",nil,6500],
				["FirstAidKit",nil,2500],
				["NVGoggles_OPFOR",nil,11000],
				["Chemlight_red",nil,900],
				["Chemlight_yellow",nil,900],
				["Chemlight_green",nil,900],
				["Chemlight_blue",nil,900]
			]
		];
	};
};
