/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
store.steampowered.com/curator/32364216

Subscribe to the channel:↓
https://www.youtube.com/c/Famouse

More leaks in the discord:↓ 
discord.gg/rFdQwzm
------------------------------------------------------------------------*/
function LoadCommandPanel()

	BG_HEADTEXT:SetText( "Команды" )
	BG_HEADTEXT:SizeToContents()
	
	COMMAND = vgui.Create( "Panel", BG_MAIN )
	COMMAND:SetSize( BG_MAIN:GetWide(), BG_MAIN:GetTall() )
	
	local COMMAND_WINDOW = vgui.Create( "Panel", COMMAND )
	COMMAND_WINDOW:SetSize( BG_MAIN:GetWide() - 56, BG_MAIN:GetTall() - 50 )
	COMMAND_WINDOW:SetPos( -200, 25 )
	COMMAND_WINDOW.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Команды", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, w - 26, 44 )
	end
	
	local COMMAND_LIST = vgui.Create( "DPanelList", COMMAND_WINDOW )
	COMMAND_LIST:SetPos( 24, 54 )
	COMMAND_LIST:SetSize( COMMAND_WINDOW:GetWide() - 30, COMMAND_WINDOW:GetTall() - 54 )
	COMMAND_LIST:EnableVerticalScrollbar( true )
	COMMAND_LIST:SetSpacing( 2 )
	COMMAND_LIST:DockPadding( 0, 5, 10, 0 )
	COMMAND_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	COMMAND_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	COMMAND_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	COMMAND_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	local Categories = {}
	
	table.insert( Categories, { Name = "Действия с деньгами", Table = MONEYCMD_BUTTONS } )
	table.insert( Categories, { Name = "Roleplay", Table = RPCMD_BUTTONS } )
	if table.HasValue( ELITE.AccessToCPCmds, LocalPlayer():Team() ) then
		table.insert( Categories, { Name = "Полицейский", Table = CPCMD_BUTTONS } )
	end
	if table.HasValue( ELITE.AccessToMayorCmds, LocalPlayer():Team() ) then
		table.insert( Categories, { Name = "Мэр", Table = MAYORCMD_BUTTONS } )
	end
	table.insert( Categories, { Name = "Остальное", Table = OTHERCMD_BUTTONS } )
	
	for k, v in pairs( Categories ) do
	
		local ammoFrame = vgui.Create( "DCollapsibleCategory" ) -- surface.DrawLine( 24, self:GetTall() - 44, self:GetWide() - 24, self:GetTall() - 44 )
		ammoFrame:SetSize( COMMAND_LIST:GetWide(), 100 )
		ammoFrame:SetExpanded( true )
		ammoFrame:SetLabel( "" )
		ammoFrame.Paint = function()
		
		end
		ammoFrame.PaintOver = function( self, w, h )
		
			/*surface.SetDrawColor( Color( 224, 224, 224, 255 ) )
			surface.DrawLine( 0, 20, w, 20 )

			draw.RoundedBox( 4, 0, 0, w, 20, Color( 51, 54, 58, 255 ) )

			draw.RoundedBox( 4, 1, 1, w - 2, 20 - 2, Color( 62, 67, 77 ) )

			surface.SetDrawColor( Color( 84, 89, 100, 255 ) )
			surface.DrawLine( 1, 1, w - 1, 1 )
			surface.DrawLine( 1, 1, 1, 20 )
			surface.DrawLine( 1, 18, w - 1, 18 )
			surface.DrawLine( w - 2, 1, w - 2, 20 )*/

			draw.SimpleText( v.Name, "RP_SubFontThin", 10, 2, Color( 190, 190, 190, 255 ), TEXT_ALIGN_LEFT )
		end
		
		local list = vgui.Create( "DPanelList", ammoFrame )
		list:SetWide( COMMAND_LIST:GetWide() )
		list:SetAutoSize( true )
		list:SetSpacing( 2 )
		list:SetPos( 0, 20 )
		list:EnableVerticalScrollbar( false )
		list.Paint = function( s, w, h )
			draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))

			draw.RoundedBox( 0, 0, 0, w, h, Color(232,234,236,255))
		end
		
		for k, v in pairs( v.Table ) do
			local ammoButton = vgui.Create( "DButton" )
			ammoButton:SetSize( COMMAND_WINDOW:GetWide() - 50, 35 )
			ammoButton:SetPos( 0, 0 )
			ammoButton:SetText( v.NAME )
			ammoButton:SetFont( "RP_ButtonFont" )
			ammoButton:SetTextColor( Color( 255, 255, 255 ) )
			ammoButton.Paint = function( self, w, h )
				draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
				draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
				draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
				
				if self.hover then
					draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
				end
			end
			ammoButton.DoClick = function()
				v.FUNC()
			end
			
			list:AddItem( ammoButton )
		end
		
		COMMAND_LIST:AddItem( ammoFrame )
		
	end
	
	COMMAND_WINDOW:MoveTo( 28, 25, 0.2, 0, 0.2 )
end
/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/