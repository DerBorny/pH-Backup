/*
	File: fn_gatherxtc.sqf
	
	Description:
	Gathers xtc?
*/
private["_sum"];
_sum = ["kohle",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	
	player say3D "harvest";
	
	titleText["Kohle wird gesammelt","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"kohle_roh",1] call life_fnc_handleInv)) then
	{
		titleText[format["Kohle erhalten.",_sum],"PLAIN"];
	};
};

life_action_inUse = false;