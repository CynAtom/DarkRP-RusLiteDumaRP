@echo off 
cls  
title srcds.com Watchdog 
:srcds 
echo (%time%) srcds started. 
start /wait srcds.exe -console -game garrysmod +map rp_bangclaw +maxplayers 12 +port 27015 +gamemode darkrp +host_workshop_collection "1657066895"
goto srcds
quit
