//====================================================================================
//
//	wha_dp_teleportLocal.sqf - 
//
//	Local function to teleport current player to a location.
//	Notifies, counts down, fades out.
//
//	call wha_dp_fnc_teleportLocal;
//
//	Contact: Whale #5963
//
//====================================================================================

//	Parameters
//		- position = position AGLS to be moved to
params["_position"];

// Create scheduled environment that can pause
_null = [_position] spawn
{
	params["_position"];
	
	//	Count down
	// TODO - Do I need to spawn this separately?
	// why cant i use a for loop scheduled, wtf
	_timer = 10;
	while { _timer > 3 } do
	{
		// TODO - prettier
		hint format["Deploying in %1",_timer];
		_timer = _timer - 1;
		sleep 0.9;
	};
	// Fade to black
	titleText["", "BLACK OUT", 3];
	while { _timer > 0 } do
	{
		// TODO - prettier
		hint format["Deploying in %1",_timer];
		_timer = _timer - 1;
		sleep 0.9;
	};
	
	// Teleport
	player setPos _position;

	// Fade back in
	titleText["", "BLACK IN", 3];

	// Silent notification
	hintSilent "Deployed.";
};