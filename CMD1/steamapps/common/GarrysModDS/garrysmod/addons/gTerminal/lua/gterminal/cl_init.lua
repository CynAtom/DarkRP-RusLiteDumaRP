include("sh_init.lua");

surface.CreateFont("gT_ConsoleFont", {
	size = 28,
	weight = 800,
	antialias = true,
	font = "Lucida Console"
} );

local table = table;
local gTerminal = gTerminal;
local net = net;

net.Receive("gT_AddLine", function(length)
	local index = net.ReadUInt(16);
	local text = net.ReadString();
	local colorType = net.ReadUInt(8);
	local position = net.ReadInt(16);

	if ( !gTerminal[index] ) then
		gTerminal[index] = {};
	end;

	if (!position or position == -1) then
		table.insert( gTerminal[index], {text = text, color = colorType} );
	else
		gTerminal[index][position] = {text = text, color = colorType};
	end;

	if (#gTerminal[index] > 24) then
		table.remove(gTerminal[index], 1);
	end;
end);

net.Receive("gT_ActiveConsole", function()
	local index = net.ReadUInt(16);
	local entity = Entity(index);
	local client = LocalPlayer();

	if ( IsValid(entity) ) then
		client.gT_Entity = entity;
		client.gT_TextEntry = vgui.Create("DTextEntry");
		client.gT_TextEntry:SetSize(0, 0);
		client.gT_TextEntry:SetPos(0, 0);
		client.gT_TextEntry:MakePopup();

		client.gT_TextEntry.OnTextChanged = function(textEntry)
			local offset = 0;
			local text = textEntry:GetValue();

			if (string.len(text) > 50) then
				offset = textEntry:GetCaretPos() - 47;
			end;

			entity.consoleText = string.sub(text, offset);
		end;

		client.gT_TextEntry.OnEnter = function(textEntry)
			net.Start("gT_EndConsole");
				net.WriteUInt(index, 16);
				net.WriteString( tostring( textEntry:GetValue() ) );
			net.SendToServer();

			textEntry:SetText("");
			textEntry:SetCaretPos(0);

			entity.consoleText = "";
		end;
	end;
end);

net.Receive("gT_EndTyping", function(length)
	local client = LocalPlayer();

	if ( !IsValid(client.gT_TextEntry) ) then
		return;
	end;

	client.gT_TextEntry:Remove();

	if ( IsValid(client.gT_Entity) ) then
		client.gT_Entity.consoleText = "";
	end;
end);

MsgC(Color(0, 255, 0), "Loading gTerminal!\n");