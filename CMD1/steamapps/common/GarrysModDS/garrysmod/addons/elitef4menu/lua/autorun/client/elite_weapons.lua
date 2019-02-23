/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
http://store.steampowered.com/curator/32364216

Subscribe to the channel:↓
https://www.youtube.com/c/Famouse

More leaks in the discord:↓ 
discord.gg/rFdQwzm
------------------------------------------------------------------------*/
function OpenWeaponsTab()
	BG_HEADTEXT:SetText( "Оружие/Ящики" )
	BG_HEADTEXT:SizeToContents()
	
	WEP_MAIN = vgui.Create( "Panel", BG_MAIN )
	WEP_MAIN:SetSize( BG_MAIN:GetWide(), BG_MAIN:GetTall() )
	
	local WEP_WINDOW = vgui.Create( "Panel", WEP_MAIN )
	WEP_WINDOW:SetSize( 326, BG_MAIN:GetTall() - 50 )
	WEP_WINDOW:SetPos( -200, 25 )
	WEP_WINDOW.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Список оружия", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, w - 26, 44 )
		
		if not weapons then
			draw.SimpleText( "Пусто !", "RP_SubFontThick", WEP_WINDOW:GetWide() / 2, WEP_WINDOW:GetTall() / 2, Color( 190, 190, 190 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
		end
	end
	
	local shipments = false
	local weapons = false
	
	local SHIP_WINDOW = vgui.Create( "Panel", WEP_MAIN )
	SHIP_WINDOW:SetSize( 326, BG_MAIN:GetTall() - 50 )
	SHIP_WINDOW:SetPos( 1000, 25 )
	SHIP_WINDOW.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Коробки с оружием(X5)", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, w - 26, 44 )
		
		if not shipments then
			draw.SimpleText( "Пусто !", "RP_SubFontThick", SHIP_WINDOW:GetWide() / 2, SHIP_WINDOW:GetTall() / 2, Color( 190, 190, 190 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
		end
	end
	
	WEP_LIST = vgui.Create( "DPanelList", WEP_WINDOW )
	WEP_LIST:SetPos( 24, 54 )
	WEP_LIST:SetSize( WEP_WINDOW:GetWide() - 48, WEP_WINDOW:GetTall() - 54 )
	WEP_LIST:EnableVerticalScrollbar( true )
	WEP_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	WEP_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	WEP_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	WEP_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	SHIP_LIST = vgui.Create( "DPanelList", SHIP_WINDOW )
	SHIP_LIST:SetPos( 24, 44 )
	SHIP_LIST:SetSize( SHIP_WINDOW:GetWide() - 30, SHIP_WINDOW:GetTall() - 54 )
	SHIP_LIST:EnableVerticalScrollbar( true )
	SHIP_LIST:DockPadding( 0, 5, 10, 0 )
	SHIP_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	SHIP_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	SHIP_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	SHIP_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	
	
	for k, v in pairs( CustomShipments ) do
	
		if (v.seperate and (not GAMEMODE.Config.restrictbuypistol or
			(GAMEMODE.Config.restrictbuypistol and (not v.allowed[1] or table.HasValue(v.allowed, LocalPlayer():Team())))))
			and (not v.customCheck or v.customCheck and v.customCheck(LocalPlayer())) then
			
			weapons = true

			local entpan = vgui.Create( "Panel" )
			entpan:SetSize( WEP_LIST:GetWide(), 60 )
			entpan:SetText( "" )
			entpan.Paint = function( self, w, h )
			
				surface.SetDrawColor( Color( 242, 242, 242 ) )
			
				surface.DrawLine( 0, h - 1, w, h - 1 )
				draw.SimpleText( string.upper(v.name), "RP_SubFontThick", 70, 6, Color( 0, 0, 0 ) )
				draw.SimpleText( "Цена: €"..string.upper(v.pricesep), "RP_SubFontThick", 71, 20, Color( 210, 210, 210 ) )
			end
			
			local entModel = vgui.Create( "SpawnIcon", entpan )
			entModel:SetSize( 64, 64 )
			entModel:SetPos( 1, 1 )
			entModel:SetModel(v.model)
			entModel:SetMouseInputEnabled(false)
			entModel.PaintOver = function()end
			
			local entButton = vgui.Create( "DButton", entpan )
			entButton:SetSize( 60, 35 )
			entButton:SetPos( entpan:GetWide() - 80, (entpan:GetTall() / 2) - 17.5 )
			entButton:SetText( "Купить" )
			entButton:SetFont( "RP_ButtonFont" )
			entButton:SetTextColor( Color( 255, 255, 255 ) )
			entButton.Paint = function( self, w, h )
				draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
				draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
				draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
				
				if self.hover then
					draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
				end
			end
			entButton.DoClick = function()
				RunEntCmd("buyshipment "..v.name)
			end
			entButton.OnCursorEntered = function( self )
				self.hover = true
			end
			entButton.OnCursorExited = function( self )
				self.hover = false
			end
			
			WEP_LIST:AddItem( entpan )
		end
	end
	
	for k, v in pairs( CustomShipments ) do
	
		if not v.noship and table.HasValue(v.allowed, LocalPlayer():Team())
            and (not v.customCheck or (v.customCheck and v.customCheck(LocalPlayer()))) then
			
			shipments = true

			local entpan = vgui.Create( "Panel" )
			entpan:SetSize( SHIP_LIST:GetWide(), 60 )
			entpan:SetText( "" )
			entpan.Paint = function( self, w, h )
			
				surface.SetDrawColor( Color( 242, 242, 242 ) )
			
				surface.DrawLine( 0, h - 1, w, h - 1 )
				draw.SimpleText( string.upper(v.name), "RP_SubFontThick", 70, 6, Color( 0, 0, 0 ) )
				draw.SimpleText( "Цена: €"..string.upper(v.price), "RP_SubFontThick", 71, 20, Color( 210, 210, 210 ) )
				
			end
			
			local entModel = vgui.Create( "SpawnIcon", entpan )
			entModel:SetSize( 64, 64 )
			entModel:SetPos( 1, 1 )
			entModel:SetModel(v.model)
			entModel:SetMouseInputEnabled(false)
			entModel.PaintOver = function()end
			
			local entButton = vgui.Create( "DButton", entpan )
			entButton:SetSize( 60, 35 )
			entButton:SetPos( entpan:GetWide() - 80, (entpan:GetTall() / 2) - 17.5 )
			entButton:SetText( "Купить" )
			entButton:SetFont( "RP_ButtonFont" )
			entButton:SetTextColor( Color( 255, 255, 255 ) )
			entButton.Paint = function( self, w, h )
				draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
				draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
				draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
				
				if self.hover then
					draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
				end
			end
			entButton.DoClick = function()
				RunEntCmd("buyshipment "..v.name)
			end
			entButton.OnCursorEntered = function( self )
				self.hover = true
			end
			entButton.OnCursorExited = function( self )
				self.hover = false
			end
			
			SHIP_LIST:AddItem( entpan )
		end
	end
	
	SHIP_WINDOW:MoveTo( WEP_MAIN:GetWide() - 326 - 28, 25, 0.2, 0, 0.2 )
	WEP_WINDOW:MoveTo( 28, 25, 0.2, 0, 0.2 )
end

/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/