/*
Lets Make Some NOISE!!
*/

//message
function onPlayerJoin( pPlayer, )
{
	BigMessage ( pPlayer, "Welcome to the server", 3000, 3);
	return 1;
}


function onPlayerEnteringVehicle( pPlayer, vehicle, seat )  
{
    local m = vehicle.Model;
	if ( vehicle.Model == 114 ) //bf injection crash fix
	{
		pPlayer.Vehicle = vehicle;
	}
	
	if ( vehicle.Model == 116 )
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
}

function onPlayerExitingVehicle( pPlayer, vehicle ) 
{
   local m = vehicle.Model;
   if( vehicle.Model == 114 ) //bf injection crash fix
	{
      pPlayer.Vehicle = vehicle;
	}
}

//Weapon animations
function onPlayerWeaponChange( pPlayer, oldwep, newwep, ammo )
{
     if ( newwep == WEP_FIST )
     {
     pPlayer.SetAnim (57);  
     }
     if ( newwep == WEP_BAT )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_COLT45 )
     {
     pPlayer.SetAnim (57);  
     }
     if ( newwep == WEP_UZI )
     {
     pPlayer.SetAnim (57);  
     }
     if ( newwep == WEP_SHOTGUN )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_AK47 )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_M16 )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_SNIPER )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_ROCKETLAUNCHER )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_FLAMETHROWER )
     {
     pPlayer.SetAnim (58);  
     }
     if ( newwep == WEP_MOLOTOV )
     {
     pPlayer.SetAnim (57);  
     }
     if ( newwep == WEP_GRENADE )
     {
     pPlayer.SetAnim (57);  
     }
     
     return 1;
}

//end weapon animations