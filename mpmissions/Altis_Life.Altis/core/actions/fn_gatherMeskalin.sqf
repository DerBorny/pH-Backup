/*
	File: fn_gatherxtc.sqf
	
	Description:
	Gathers xtc?
*/
private["_sum"];
_sum = ["meskalin",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	
	player say3D "harvest";
	
	titleText["Kakteen werden abgeholt","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"meskalin_r",1] call life_fnc_handleInv)) then
	{
		titleText[format["Kakteen erhalten.",_sum],"PLAIN"];
	};
};

life_action_inUse = false;