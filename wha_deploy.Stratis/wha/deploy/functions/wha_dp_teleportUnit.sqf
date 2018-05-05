//====================================================================================
//
//	wha_dp_teleportUnit.sqf - 
//
//	Teleports target unit to target position.
//
//	call wha_dp_fnc_teleportUnit;
//
//	Contact: Whale #5963
//
//====================================================================================

//	Parameters
//		- unit = unit whose group will be moved
//		- position = position AGLS to be moved to
params["_unit","_position"];

// Send code to client machine.
[_position] remoteExec ["wha_dp_fnc_teleportLocal", owner _unit];
