/*
The Commands
*/

function onPlayerCommand( pPlayer, szCommand, szParams )
{
	if ( szCommand == "cmds" )
	{
		MessagePlayer ( "/cmds, /ver, /wanted", pPlayer );
	}
	else if ( szCommand == "ver" )
	{
		MessagePlayer ( "Build 100, v1.00 ALPHA", pPlayer );
	}
	else if ( szCommand == "wanted" )
	{
		local flag=0;
			for(local i=0,j=1;j<=GetPlayers();i++)
			{
				local player=FindPlayer(i);
				if (player)
				{	
					j+=1;
					if(player.WantedLevel > 0)
					{
					MessagePlayer( player.Name+ " - Wanted Level: (" + player.WantedLevel + ")", pPlayer);
					flag=1;
					}
			}
		}
	}
}