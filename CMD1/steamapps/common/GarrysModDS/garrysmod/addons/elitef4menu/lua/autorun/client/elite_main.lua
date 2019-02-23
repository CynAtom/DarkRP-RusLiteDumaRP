/*----------------------------------------------------------------------

------------------------------------------------------------------------*/
surface.CreateFont( "RP_HeaderFont", {
	font = "Open Sans",
	size = 29,
	weight = 200
} )

surface.CreateFont( "RP_SubFontThick", {
	font = "Open Sans",
	size = 16,
	weight = 1000
} )

surface.CreateFont( "RP_SubFontThin", {
	font = "Open Sans",
	size = 16,
	weight = 0
} )

surface.CreateFont( "RP_CatFont", {
	font = "Open Sans",
	size = 12,
	weight = 1000
} )

surface.CreateFont( "RP_ButtonFont", {
	font = "Open Sans",
	size = 18,
	weight = 750
} )

local function CloseAllTabs()
	if IsValid( HOME_MAIN ) then
		HOME_MAIN:Remove()
	end
	if IsValid( JOB_MAIN ) then
		JOB_MAIN:Remove()
	end
	if IsValid( WEP_MAIN ) then
		WEP_MAIN:Remove()
	end
	if IsValid( AMMO_MAIN ) then
		AMMO_MAIN:Remove()
	end
	if IsValid( ENT_MAIN ) then
		ENT_MAIN:Remove()
	end
	if IsValid( FOOD_MAIN ) then
		FOOD_MAIN:Remove()
	end
	if IsValid( WEBSITE_MAIN ) then
		WEBSITE_MAIN:Remove()
	end
	if IsValid( COMMAND ) then
		COMMAND:Remove()
	end
end

Texts = {}

Texts.DarkRPCommand = "say"

function RunCmd(...)
	local arg = {...}
	if Texts.DarkRPCommand:lower():find('say') then
			arg = table.concat(arg,' ')
	else
			arg = table.concat(arg,'" "')
	end
	
	RunConsoleCommand(Texts.DarkRPCommand,arg)
end

function RunEntCmd(...)
	local arg = {...}
	if Texts.DarkRPCommand:lower():find('say') then
			arg = table.concat(arg,' ')
	else
			arg = table.concat(arg,'" "')
	end
	
	RunConsoleCommand(Texts.DarkRPCommand, "/"..arg)
end

local avatar

local cos = math.cos
local sin = math.sin
local rad = math.rad

local sideButtons = {}

table.insert( sideButtons, { Title = "Меню", Func = function() LoadHomePanel() end } )
table.insert( sideButtons, { Title = "Команды", Func = function() LoadCommandPanel() end } )
table.insert( sideButtons, { Title = "Работы", Func = function() LoadCmdPanel() end } )
table.insert( sideButtons, { Title = "Оружие", Func = function() OpenWeaponsTab() end } )
table.insert( sideButtons, { Title = "Предметы", Func = function() LoadEntitiesPanel() end } )
table.insert( sideButtons, { Title = "Патроны", Func = function() LoadAmmoPanel() end } )




local function BuildAdminMenu()
	avatar = false
	
	local createdTime = CurTime()

	BG_PANEL = vgui.Create( "DFrame" )
	BG_PANEL:SetSize( 900, 600 )
	BG_PANEL:Center()
	BG_PANEL:SetTitle( "" )
	BG_PANEL:MakePopup()
	BG_PANEL:ShowCloseButton( false )
	BG_PANEL.Paint = function( self, w, h )
		draw.RoundedBoxEx( 4, 0, 0, w, 45, Color( 244, 244, 244 ), true, true, false, false )
		
		surface.SetMaterial( Material( "elitef4menu/circle.png" ) )
		surface.DrawTexturedRect( 16, 16, 12, 12 )
		surface.DrawTexturedRect( 16 + 12 + 4, 16, 12, 12 )
		surface.DrawTexturedRect( 16 + 12 + 12 + 8, 16, 12, 12 )
		
		if input.IsKeyDown(95) then
			if self.ReadyToClose then
				self:Remove()
				return
			end
		else
			if CurTime() - createdTime > 0.2 then
				self.ReadyToClose = true
			end
		end
	end
	
	local BG_CLOSE = vgui.Create( "DButton", BG_PANEL )
	BG_CLOSE:SetSize( 32, 32 )
	BG_CLOSE:SetPos( BG_PANEL:GetWide() - 38,6 )
	BG_CLOSE:SetText( "r" )
	BG_CLOSE:SetFont( "marlett" )
	BG_CLOSE:SetTextColor( Color( 166, 169, 172 ) )
	BG_CLOSE.Paint = function()
		
	end
	BG_CLOSE.DoClick = function()
		BG_PANEL:Close()
	end
	
	BG_MAIN = vgui.Create( "Panel", BG_PANEL )
	BG_MAIN:SetPos( 182, 47 + 75 )
	BG_MAIN:SetSize( BG_PANEL:GetWide() - 182, BG_PANEL:GetTall() - 122 )
	BG_MAIN.Paint = function( self, w, h )
		draw.RoundedBoxEx( 4, 0, 0, w, h, Color( 246, 246, 246 ) )
	end
	
	local BG_SIDEBAR = vgui.Create( "Panel", BG_PANEL )
	BG_SIDEBAR:SetPos( 0, 45 )
	BG_SIDEBAR:SetSize( 182, BG_PANEL:GetTall() - 45 )
	BG_SIDEBAR.Paint = function( self, w, h )
		draw.RoundedBoxEx( 4, 0, 0, w, h, Color( 42, 44, 56 ), false, false, true, false )
	end
	
	BG_SIDEHEAD = vgui.Create( "Panel", BG_SIDEBAR )
	BG_SIDEHEAD:SetPos( 0, 0 )
	BG_SIDEHEAD:SetSize( 182, 75 )
	BG_SIDEHEAD.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 52, 152, 219 ) )
	
		draw.RoundedBox( 0, 12, (75 / 2) - 19, 36, 36, Color( 41, 128, 185 ) )
		
		--draw.SimpleText( string.upper( LocalPlayer():SteamID()), "RP_SubFontThin", 54, 22, Color( 255, 255, 255 ) )
		--draw.SimpleText( string.upper( LocalPlayer():Nick() ), "RP_SubFontThick", 54, 36, Color( 255, 255, 255 ) )
		
		if not avatar then
			DrawPlayerAv()
		end
		
	end
	
	local TITLE_ID = vgui.Create( "DLabel", BG_SIDEHEAD )
	TITLE_ID:SetSize( 128, 10 )
	TITLE_ID:SetPos( 54, 25 )
	TITLE_ID:SetFont( "RP_SubFontThin" )
	TITLE_ID:SetText( string.upper( team.GetName(LocalPlayer():Team())) )
	TITLE_ID:SetTextColor( Color( 255, 255, 255 ) )
	
	local TITLE_NAME = vgui.Create( "DLabel", BG_SIDEHEAD )
	TITLE_NAME:SetSize( 128, 10 )
	TITLE_NAME:SetPos( 54, 37 )
	TITLE_NAME:SetFont( "RP_SubFontThick" )
	TITLE_NAME:SetText( string.upper( LocalPlayer():Nick()) )
	TITLE_NAME:SetTextColor( Color( 255, 255, 255 ) )
	
	local BG_SIDELIST = vgui.Create( "DPanelList", BG_SIDEBAR )
	BG_SIDELIST:SetPos( 0, 75 )
	BG_SIDELIST:SetSize( 182, BG_SIDEBAR:GetTall() - 75 )
	
	local BG_HEADER = vgui.Create( "Panel", BG_PANEL )
	BG_HEADER:SetPos( 182, 45 )
	BG_HEADER:SetSize( 900 - 182, 77 )
	BG_HEADER.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255 ) )
		
		surface.SetMaterial( Material( "elitef4menu/bars.png" ) )
		surface.DrawTexturedRect( 27, 27, 18, 18 )
		
		surface.SetDrawColor( Color( 232, 232, 232 ) )
		surface.DrawLine( 0, h - 2, w, h - 2 )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 0, h - 1, w, h - 1 )
	end
	
	BG_HEADTEXT = vgui.Create( "DLabel", BG_HEADER )
	BG_HEADTEXT:SetPos( 56, 21 )
	BG_HEADTEXT:SetFont( "RP_HeaderFont" )
	BG_HEADTEXT:SetText( "Dashboard" )
	BG_HEADTEXT:SetTextColor( Color( 0, 0, 0 ) )
	BG_HEADTEXT:SizeToContents()
	
	for k, v in pairs( sideButtons ) do
		local SIDE_BUTTON = vgui.Create( "DButton", BG_SIDELIST )
		SIDE_BUTTON:SetSize( 182, 60 )
		SIDE_BUTTON:SetText( v.Title )
		SIDE_BUTTON:SetTextColor( Color( 151, 154, 160 ) )
		SIDE_BUTTON:SetFont( "RP_SubFontThick" )
		SIDE_BUTTON.Paint = function( self, w, h )
			if self.hover then
				draw.RoundedBox( 0, 0, 0, w, h, Color( 30, 32, 44 ) )
			else
				draw.RoundedBox( 0, 0, 0, w, h, Color( 42, 44, 56 ) )
			end
		end
		SIDE_BUTTON.DoClick = function()
			CloseAllTabs()
			v.Func()
		end
		SIDE_BUTTON.OnCursorEntered = function( self )
			self.hover = true
			self:SetTextColor( Color( 254, 254, 254 ) )
		end
		SIDE_BUTTON.OnCursorExited = function( self )
			self.hover = false
			self:SetTextColor( Color( 151, 154, 160 ) )
		end
		
		BG_SIDELIST:AddItem( SIDE_BUTTON )
	end
	
	LoadHomePanel()
end

function DrawPlayerAv()
	local PLY_AV = vgui.Create( "AvatarImage", BG_SIDEHEAD )
	PLY_AV:SetPos( 14, (75/2) - 16 )
	PLY_AV:SetSize( 32, 32 )
	PLY_AV:SetPlayer( LocalPlayer(), 32 )
	avatar = true
end

net.Receive( "OpenAdminMenu", function()
	BuildAdminMenu()
end )

timer.Create( "F4Override", 2, 0, function()
	GAMEMODE.ShowSpare2 = BuildAdminMenu
end ) 

/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/