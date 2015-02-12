/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",1200,(localize "STR_Process_Oil"),false]};
	case "diamond": {["diamond","diamondc",1350,(localize "STR_Process_Diamond"),false]};
	case "heroin": {["heroinu","heroinp",1750,(localize "STR_Process_Heroin"),false]};
	case "baeckerei": {["heroinu","baeckerei",1750,(localize "STR_Process_Baeckerei"),false]};
	case "kohle": {["kohle_roh","kohle_fertig",1750,(localize "STR_Process_Kohle"),false]};
	case "copper": {["copperore","copper_r",750,(localize "STR_Process_Copper"),false]};
	case "iron": {["ironore","iron_r",1120,(localize "STR_Process_Iron"),false]};
	case "sand": {["sand","glass",650,(localize "STR_Process_Sand"),false]};
	case "salt": {["salt","salt_r",450,(localize "STR_Process_Salt"),false]};
	case "cocaine": {["cocaine","cocainep",1500,(localize "STR_Process_Cocaine"),false]};
	case "marijuana": {["cannabis","marijuana",500,(localize "STR_Process_Marijuana"),false]};
	case "cement": {["rock","cement",350,(localize "STR_Process_Cement"),false]};
	case "lsd": {["frog","lsd",1500,"Processing LSD",false]};
	case "zigaretten": {["tabaku","tabakp",2750,"Stopfe Zigaretten",false]};
	case "zucker": {["zuckeru","zuckerp",1150,"Raffiniere Zucker",false]};
	case "meth": {["meth_r","meth",2100,(localize "STR_Process_Meth"),false]};
	case "meskalin": {["meskalin_r","meskalin",2100,(localize "STR_Process_Meskalin"),false]};
	case "xtc": {["xtc_r","xtc",2100,(localize "STR_Process_XTC"),false]};
	case "xtc2": {["xtc","xtc_r",2100,(localize "STR_Process_XTC"),false]};
	case "orange": {["orangeu","oranges",500,"Quetsche Orangen aus.",false]};
	case "silber": {["silberu","silberp",350,"Verarbeite Rohsilber",false]};
	case "beer": {["hopfenu","hopfenp",2000,"Braue Bier",true,"yeast"]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	