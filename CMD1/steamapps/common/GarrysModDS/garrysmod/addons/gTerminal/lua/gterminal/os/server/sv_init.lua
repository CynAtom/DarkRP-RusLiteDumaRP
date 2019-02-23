include("sv_commands.lua");

function OS:GetName()
	return "ServerOS";
end;

function OS:GetUniqueID()
	return "server";
end;

function OS:GetWarmUpText()
	return {
		" _____                    ",
		"|   __|___ ___ _ _ ___ ___",
		"|__   | -_|  _| | | -_|  _|",
		"|_____|___|_|  \\_/|___|_|  ",
		"-OPERATING SYSTEM V1-"
	};
end;

function OS:ShutDown(entity)
	if (entity.networkID and entity.isHost) then
		for k, v in pairs( ents.FindByClass(entity.ClassName) ) do
			if (v.networkID == entity.networkID) then
				gTerminal:Broadcast(v, "Lost connection to active network!", GT_COL_WRN);

				v.networkID = nil;
			end;
		end;
	end;
end;