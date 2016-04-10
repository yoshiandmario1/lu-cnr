/*
Liberty Unleashed Cops n Robbers
By 2204 
Open-Source Gamemode!
*/

//message
function onPlayerJoin( pPlayer, )
{
	BigMessage ( pPlayer, "Welcome to the server", 3000, 3);
	Message( ">> " + pPlayer + " has joined the server!", 255, 0, 0);
	return 1;
}

function onPlayerEnteringVehicle( pPlayer, vehicle, seat )  
{
    local m = vehicle.Model;
	if ( vehicle.Model == 114 ) //BF Injection crash fix
	{
		pPlayer.Vehicle = vehicle;
	}
}

function onPlayerEnteredVehicle( pPlayer, vehicle, seat )  
{
    local m = vehicle.Model;
	if ( vehicle.Model > 115 && vehicle.Model < 119 )
	{
		if ( pPlayer.Skin > 0 && pPlayer.Skin < 7 )
			{
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			}
		else
			{
			pPlayer.WantedLevel ++;
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			MessagePlayer ( "Committed a crime - Law enforcement vehicle theft. Wanted level: " + pPlayer.WantedLevel, pPlayer );
			}
	}
	if ( vehicle.Model == 107 )
	{
		if ( pPlayer.Skin > 0 && pPlayer.Skin < 7 )
			{
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			}
		else
			{
			pPlayer.WantedLevel ++;
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			MessagePlayer ( "Committed a crime - Law enforcement vehicle theft. Wanted level: " + pPlayer.WantedLevel, pPlayer );
			}
	}
	if ( vehicle.Model == 120 )
	{
		if ( pPlayer.Skin > 0 && pPlayer.Skin < 7 )
			{
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			}
		else
			{
			pPlayer.WantedLevel ++;
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			MessagePlayer ( "Committed a crime - Law enforcement vehicle theft. Wanted level: " + pPlayer.WantedLevel, pPlayer );
			}
	}
	if ( vehicle.Model > 122 && vehicle.Model < 124 )
	{
		if ( pPlayer.Skin > 0 && pPlayer.Skin < 7 )
			{
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			}
		else
			{
			pPlayer.WantedLevel = 6;
			MessagePlayer ( "Type /vehcmds for a list of vehicle commands.", pPlayer );
			MessagePlayer ( "Committed a crime - Unauthorized Army vehicle theft. Wanted level: " + pPlayer.WantedLevel, pPlayer );
			}
	}
}


function onPlayerExitingVehicle( pPlayer, vehicle ) 
{
   local m = vehicle.Model;
   if( vehicle.Model == 114 ) //BF Injection crash fix
	{
      pPlayer.Vehicle = vehicle;
	}
}

function onPlayerDeath( pPlayer )
{
     pPlayer.WantedLevel = 0;
	 
     return 1;
}