local gTerminal = gTerminal;
local timer = timer;
local OS = OS;

OS:NewCommand(":help", function(client, entity, arguments)
	gTerminal:Broadcast(entity, "=============================");
	gTerminal:Broadcast(entity, "  *Welcome to the Terminal!");
	gTerminal:Broadcast(entity, "  *Created by Chessnut.");
	gTerminal:Broadcast(entity, "");
	gTerminal:Broadcast(entity, "    COMMANDS:");

	for k, v in SortedPairs( OS:GetCommands() ) do
		gTerminal:Broadcast(entity, "     "..k.." - "..v.help);
	end;

	gTerminal:Broadcast(entity, "=============================");
end, "Provides a list of help.");

OS:NewCommand(":cls", function(client, entity)
	for i = 0, 25 do
		timer.Simple(i * 0.01, function()
			if ( IsValid(entity) ) then
				gTerminal:Broadcast(entity, "", MSG_COL_NIL, i);
			end;
		end);
	end;
end, "Clears the screen.");

OS:NewCommand(":os", function(client, entity, arguments)
	local command = arguments[1];

	if (command == "install") then
		local info = arguments[2];

		if (!info) then
			gTerminal:Broadcast(entity, "Invalid OS identifier!", GT_COL_ERR);

			return;
		elseif (info == "default") then
			gTerminal:Broadcast(entity, "Cannot use primary system!", GT_COL_ERR);

			return;
		end;

		local system = gTerminal.os[info];

		if (!system) then
			gTerminal:Broadcast(entity, "Couldn't find OS!", GT_COL_ERR);

			return;
		end;

		entity.locked = true;

		gTerminal:Broadcast(entity, "Preparing installation...", GT_COL_INTL);

		timer.Simple(1, function()
			if ( !IsValid(entity) ) then
				return;
			end;

			for i = 0, 25 do
				gTerminal:Broadcast(entity, "", nil, i);
			end;

			gTerminal:Broadcast(entity, "=================================================", GT_COL_MSG, 16);
			gTerminal:Broadcast(entity, "Idle...", GT_COL_MSG, 18);
			gTerminal:Broadcast(entity, "", GT_COL_MSG, 19);
			gTerminal:Broadcast(entity, "     [                         ] 0%", GT_COL_MSG, 20);
			gTerminal:Broadcast(entity, "", GT_COL_MSG, 21);
			gTerminal:Broadcast(entity, "=================================================", GT_COL_MSG, 22);

			local messages = {
				"Inspecting disk space.",
				"Allocating disk space.",
				"Retrieving required resources.",
				"Unpacking resources.",
				"Retrieving system requirements.",
				"Validating file integrity.",
				"Compiling packages.",
				"Exporting packages to file system.",
				"Setting up access data.",
				"Setting up system profile.",
				"Setting up commands.",
				"Finalizing product."
			};

			local time = math.Rand(0.5, 1.5);

			for i = 1, 25 do
				time = time + math.Rand(0.05, 0.25);

				timer.Simple(time, function()
					if ( IsValid(entity) ) then
						local msgID = math.Clamp(i, 1, #messages);

						gTerminal:Broadcast(entity, "     "..messages[msgID], GT_COL_MSG, 18);
						gTerminal:Broadcast(entity, "     ["..string.rep("=", i)..string.rep(" ", 25 - i).."] "..( 100 * math.Round(i / 25, 2) ).."%", GT_COL_MSG, 20);

						if (i == 25) then
							for i = 0, 25 do
								if ( IsValid(entity) ) then
									gTerminal:Broadcast(entity, "", nil, i);
								end;
							end;

							gTerminal:Broadcast(entity, "SHUTTING DOWN, PLEASE RESTART TERMINAL...", GT_COL_INTL, 1);

							timer.Simple(math.Rand(1, 3), function()
								if ( IsValid(entity) ) then
									entity:SetOS(info);
									entity:SetActive(false);
									entity.locked = false;
								end;
							end);
						end;
					end;
				end);
			end;
		end);
	elseif (command == "list") then
		local info = arguments[2];

		gTerminal:Broadcast(entity, "Available OS Packages:");
		gTerminal:Broadcast(entity, "", GT_COL_MSG);

		local count = 0;

		for k, v in SortedPairs(gTerminal.os) do
			if (type(v) == "table" and v.GetName and v.GetUniqueID and v:GetUniqueID() != "default") then
				count = count + 1;

				gTerminal:Broadcast(entity, "     "..count..". "..v:GetUniqueID().." ("..v:GetName()..")");
			end;
		end;
	else
		gTerminal:Broadcast(entity, "Operation System Config");
		gTerminal:Broadcast(entity, "  INFO:");
		gTerminal:Broadcast(entity, "    Allows configuration of the operation system.");
		gTerminal:Broadcast(entity, "  HELP:");
		gTerminal:Broadcast(entity, "    :os install - Installs an OS package.");
		gTerminal:Broadcast(entity, "    :os list - Lists the available OS packages.");
	end;
end, "Operation system configuration.");

OS:NewCommand(":x", function(client, entity)
	gTerminal:Broadcast( entity, "SHUTTING DOWN..." );

	timer.Simple(math.Rand(2, 5), function()
		if ( IsValid(entity) ) then
			for i = 0, 25 do
				if ( IsValid(entity) ) then
					gTerminal:Broadcast(entity, "", nil, i);
				end;
			end;

			entity:SetActive(false);

			gTerminal.os:Call(entity, "ShutDown");
		end;
	end);
end, "Turns off the terminal.");