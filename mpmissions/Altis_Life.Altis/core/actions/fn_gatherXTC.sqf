/*
	File: fn_gatherxtc.sqf
	
	Description:
	Gathers xtc?
*/
private["_sum"];
_sum = ["xtc",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	
	player say3D "harvest";
	
	titleText["Hole flüssiges MDMA ab ...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"meth_r",1] call life_fnc_handleInv)) then
	{
		titleText[format["flüssiges MDMA erhalten.",_sum],"PLAIN"];
	};
};

life_action_inUse = false;