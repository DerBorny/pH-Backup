#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
*/
private["_side","_ret"];  // <<<--------- MUSS aktualisiert werden damit es funktioniert
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker (Name der Markierung im Editor), Spawn Name (Angezeigter Name in der Spawnauswahl), PathToImage (Bild in der Spawnauswahl)
switch (_side) do
{
	case west:
	{
		_ret = [  
 			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira OP","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_airbase","Airbase HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	
	case independent: {
		_ret = [
			["civ_spawn_1","Kavala Markt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Air HQ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pyrgos Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
	case civilian:
	{
		
		
		//Mit einer Lizenz für Rebellen kann man nur diese Spawnpunkte wählen
		if(license_civ_rebel && playerSide == civilian) then {
		_ret = [
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_1","Bandit BA1","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_2","Bandit BA2","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_3","Bandit BA3","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		// Ohne die Lizenz für Rebellen bekommt man die normale Auswahl
		
		if(!license_civ_rebel && playerSide == civilian) then {
		_ret = [
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_5","Küstenmarkt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_6","Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		
		
		//Donator können zusätzlich zu der normalen Auswahl noch folgende Spawnpunkte bekommen
		if(__GETC__(life_donator) > 0) then {
			_ret = _ret + [
				["donor_pyrgos","Donor Camp","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["donor_airport","Donor Airport","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["donor_airfield","Donor Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				
			];
		};
		
		
		  //Hier könnte man z.B. einen Spawnpunkt für gelistete Gangs anhand der PUID definieren
		if((getPlayerUID player) in ["76561198000645748","76561198041327266","76561198136832612","#############################"])then {
			_ret = _ret + [
				["dev_spawn_insel","DEV Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["ph_spawn","pH | Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			  ];
		};
	 };
};

_ret; // <<<--------- MUSS aktualisiert werden damit es funktioniert