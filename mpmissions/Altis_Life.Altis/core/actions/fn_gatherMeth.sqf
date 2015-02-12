/*
	File: fn_gathermeth.sqf
	
	Description:
	Gathers meth?
*/
private["_sum"];
_sum = ["meth",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	
	player say3D "harvest";
	
	titleText["Sammle Zutaten ...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"meth_r",1] call life_fnc_handleInv)) then
	{
		titleText[format["Zutaten gesammelt.",_sum],"PLAIN"];
	};
};

life_action_inUse = false;