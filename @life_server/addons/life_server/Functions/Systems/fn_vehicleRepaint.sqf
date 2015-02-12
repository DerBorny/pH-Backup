
    /*
    Author: MooN-Gaming
	Translated: DerBorny
    Thanks to Black lagoon Developing
    */
    private["_uid","_type","_classname","_color","_plate","_vInfo"];
    _vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
    _color = [_this,1,-1,[0]] call BIS_fnc_param;
    //Error checks
    if(isNull _vehicle) exitWith {diag_log "Du versuchst ein "null" Fahrzeug zu lackieren. Abgebrochen.;};
    if(!alive _vehicle) exitWith {diag_log "Du versuchst ein kaputtes Fahrzeug zu lackieren. Abgebrochen.";};
    _vInfo = _vehicle getVariable["dbInfo",[]];
    if(count _vInfo == 0) exitWith
    {
    diag_log "Du versuchst ein nonpersistentes Fahrzeug zu lackieren. Abgebrochen.";
    };
    _plate = _vInfo select 1;
    _uid = _vInfo select 0;
    diag_log "Fahrzeug umlackiert.";
    [_uid,_plate,_color] call DB_fnc_repaintVehicle;
