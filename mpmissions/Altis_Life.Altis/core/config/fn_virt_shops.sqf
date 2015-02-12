/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Banditenmarkt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Suppen",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Kaffee-Club",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","meth","xtc","xtc_r","meskalin","meskalin_r","heroinp","marijuana"]]};
	case "xtc": {["Drogendealer",["cocainep","meth","xtc","xtc_r","heroinp","marijuana"]]};
	case "oil": {["Ölhändler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glashändler",["glass"]]};
	case "iron": {["Altis Eisen- & Kupferhändler",["iron_r","copper_r"]]};
	case "diamond": {["Diamanthändler",["diamond","diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "coal": {["Kohlehändler",["kohle_fertig"]]};
	case "brot": {["Brothändler",["baeckerei"]]};
	case "cop": {["Polizei-Item-Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","storagesmall","storagebig"]]};
	case "cement": {["Zementhändler",["cement"]]};
	case "gold": {["Goldkäufer",["goldbar"]]};
};