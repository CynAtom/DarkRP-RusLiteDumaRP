/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
http://store.steampowered.com/curator/32364216

Subscribe to the channel:↓
https://www.youtube.com/c/Famouse

More leaks in the discord:↓ 
https://discord.gg/rFdQwzm
------------------------------------------------------------------------*/
function LoadAmmoPanel()

	BG_HEADTEXT:SetText( "Патроны" )
	BG_HEADTEXT:SizeToContents()
	
	AMMO_MAIN = vgui.Create( "Panel", BG_MAIN )
	AMMO_MAIN:SetSize( BG_MAIN:GetWide(), BG_MAIN:GetTall() )
	
	local AMMO_WINDOW = vgui.Create( "Panel", AMMO_MAIN )
	AMMO_WINDOW:SetSize( BG_MAIN:GetWide() - 56, BG_MAIN:GetTall() - 50 )
	AMMO_WINDOW:SetPos( -200, 25 )
	AMMO_WINDOW.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Патроны", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, w - 26, 44 )
	end
	
	AMMO_LIST = vgui.Create( "DPanelList", AMMO_WINDOW )
	AMMO_LIST:SetPos( 24, 44 )
	AMMO_LIST:SetSize( AMMO_WINDOW:GetWide() - 30, AMMO_WINDOW:GetTall() - 54 )
	AMMO_LIST:EnableVerticalScrollbar( true )
	AMMO_LIST:DockPadding( 0, 5, 10, 0 )
	AMMO_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	AMMO_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	AMMO_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	AMMO_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	for k, v in pairs( GAMEMODE.AmmoTypes ) do
	
		local ammoFrame = vgui.Create( "DPanel" ) -- surface.DrawLine( 24, self:GetTall() - 44, self:GetWide() - 24, self:GetTall() - 44 )
		ammoFrame:SetSize( AMMO_LIST:GetWide(), 60 )
		ammoFrame.Paint = function( self, w, h )
		
			surface.SetDrawColor( Color( 242, 242, 242 ) )
		
			surface.DrawLine( 0, h - 1, w, h - 1 )
			
			draw.SimpleText( string.upper(v.name), "RP_SubFontThick", 56, 14, Color( 0, 0, 0 ) )
			draw.SimpleText( "Цена: €"..string.upper(v.price), "RP_SubFontThick", 56, 30, Color( 190, 190, 190 ) )
		end
		ammoFrame.OnCursorEntered = function( self )

		end
		ammoFrame.OnCursorEntered = function( self )

		end
		
		AMMO_LIST:AddItem( ammoFrame )
		
		local ammoButton = vgui.Create( "DButton", ammoFrame )
		ammoButton:SetSize( 90, 35 )
		ammoButton:SetPos( ammoFrame:GetWide() - 110, (ammoFrame:GetTall() / 2) - 17.5 )
		ammoButton:SetText( "Купить" )
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
			RunEntCmd( "buyammo "..v.ammoType )
		end
		ammoButton.OnCursorEntered = function(self)
			self.hover = true
		end
		ammoButton.OnCursorExited = function(self)
			self.hover = false
		end
		
		local ammoModel = vgui.Create( "SpawnIcon", ammoFrame )
		ammoModel:SetSize( 52, 52 )
		ammoModel:SetPos( 0, 8 )
		ammoModel:SetModel( v.model )
		
	end
	
	AMMO_WINDOW:MoveTo( 28, 25, 0.2, 0, 0.2 )
	--HOME_STATS:MoveTo( 222, 25, 0.4, 0.2, 0.1 )
	--HOME_INFO:MoveTo( 28, 330, 0.6, 0.2, 0.1 )
end

/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/