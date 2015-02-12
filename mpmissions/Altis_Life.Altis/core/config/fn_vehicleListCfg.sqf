#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000],
			["C_Van_01_box_F",35000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["I_Heli_Transport_02_F",100000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",22500],
			["C_Hatchback_01_sport_F",200000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
		
		if(license_admin) then
		{
			_return pushBack
			["O_APC_Tracked_02_cannon_F",1];
			
			_return pushBack
			["O_APC_Tracked_02_AA_F",1];
			
			_return pushBack
			["O_MBT_02_cannon_F",1];
			
			_return pushBack
			["O_MRAP_02_F",1];
			
			_return pushBack
			["O_MRAP_02_hmg_F",1];

			_return pushBack
			["O_MRAP_02_gmg_F",1];
			
			_return pushBack
			["I_MRAP_03_F",1];
			
			return pushBack
			["I_MRAP_03_hmg_F",1];
			
			_return pushBack
			["I_MRAP_03_gmg_F",1];
		};	
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	
	
	case "reb_car":
	{
		_return =
		[
			["I_G_Quadbike_01_F",2500],
			["I_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",3750000];
			_return pushBack
			["O_MRAP_02_F",1600000];
			_return pushBack
			["I_MRAP_03_F",2000000];
			_return pushBack
			["B_MRAP_01_F",2000000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["O_MRAP_02_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
				if(license_admin) then
		{
			_return pushBack
			["O_APC_Tracked_02_cannon_F",1];
			
			_return pushBack
			["O_APC_Tracked_02_AA_F",1];
			
			_return pushBack
			["O_MBT_02_cannon_F",1];
			
			_return pushBack
			["O_MRAP_02_F",1];
			
			_return pushBack
			["O_MRAP_02_hmg_F",1];

			_return pushBack
			["O_MRAP_02_gmg_F",1];
			
			_return pushBack
			["I_MRAP_03_F",1];
			
			return pushBack
			["I_MRAP_03_hmg_F",1];
			
			_return pushBack
			["I_MRAP_03_gmg_F",1];
		};	
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",150000],
			["O_Heli_Light_02_unarmed_F",300000],
			["I_Heli_Transport_02_F",1900000],
			["I_Heli_light_03_unarmed_F",140000],
			["O_Heli_Transport_04_box_F",3000000]
		];
		
		if(license_admin) then
		{
			_return pushBack
			["O_Plane_CAS_02_F",1];
			
			_return pushBack
			["O_Heli_Attack_02_black_F",1];
			
			_return pushBack
			["B_Heli_Transport_01_camo_F",1];
			
			_return pushBack
			["O_Heli_Transport_04_F",1];

			_return pushBack
			["O_Heli_Transport_04_box_F",1];
			
			return pushBack
			["O_Heli_Transport_04_repair_F",1];
			
			_return pushBack
			["B_Heli_Transport_03_F",1];
		};	
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			
			_return pushBack
			["I_Heli_light_03_unarmed_F",200000];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			
			_return pushBack
			["I_Heli_light_03_unarmed_F",200000];
			
			_return pushBack
			["O_Heli_Attack_02_black_F",1];
			
			_return pushBack
			["B_Heli_Transport_01_camo_F",1];
			
			_return pushBack
			["O_Heli_Transport_04_F",1];

			_return pushBack
			["O_Heli_Transport_04_box_F",1];
			
			return pushBack
			["O_Heli_Transport_04_repair_F",1];
			
			_return pushBack
			["B_Heli_Transport_03_F",1];
		};
	};
//Heli-Rang 1
	case "cop_air_rang1":
	{
		_return =
		[
		    ["B_Heli_Light_01_F",75000],
			["C_Boat_Civil_01_F",22000],
			["B_Boat_Transport_01_F",190000],
			["I_SDV_01_F",1000000]
		];
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_camo_F",200000];
			
			_return pushBack
			["B_Heli_Light_01_armed_F",2000000];
			
			_return pushBack
			["O_Heli_Attack_02_black_F",3000000];
			
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_Boat_Transport_01_F",190000],
			["I_SDV_01_F",1000000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
