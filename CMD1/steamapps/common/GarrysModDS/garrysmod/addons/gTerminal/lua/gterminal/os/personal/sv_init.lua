local OS = OS;

include("sv_commands.lua");

function OS:GetName()
	return "PersonalOS";
end;

function OS:GetUniqueID()
	return "personal";
end;

function OS:GetWarmUpText()
	return {
		"  ___ ___ ___  ___  ___  _  _   _   _    ",
		" | _ \\ __| _ \\/ __|/ _ \\| \\| | /_\\ | |   ",
		" |  _/ _||   /\\__ \\ (_) | .` |/ _ \\| |__ ",
		" |_| |___|_|_\\|___/\\___/|_|\\_/_/ \\_\\____|",
		" The operating system for your personal needs."
	};
end;