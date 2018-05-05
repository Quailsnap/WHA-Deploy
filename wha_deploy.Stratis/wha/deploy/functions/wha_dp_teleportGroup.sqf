//====================================================================================
//
//	wha_dp_teleportGroup.sqf - 
//
//	Teleports group of a unit to a new location with dispersion.
//
//	call wha_dp_fnc_teleportGroup;
//
//	Contact: Whale #5963
//
//====================================================================================

//	Parameters
//		- unit = unit whose group will be moved
//		- position = position AGLS to be moved to
params["_unit","_position"];

// TODO - remove debug
//diag_log _unit;

_units = units group _unit;

// Iterate through units in group of unit . . .
{
	// Randomize target position with dispersion
	// TODO
	
	// Teleport each unit.
	[_x,_position] call wha_dp_fnc_teleportUnit;
} forEach _units;