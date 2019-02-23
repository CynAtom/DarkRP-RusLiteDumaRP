/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
store.steampowered.com/curator/32364216

Subscribe to the channel:↓
www.youtube.com/c/Famouse

More leaks in the discord:↓ 
https://discord.gg/rFdQwzm
------------------------------------------------------------------------*/
function OpenJobInfo( index )
	local jbg = vgui.Create( "DFrame" )
	jbg:SetSize( ScrW(), ScrH() )
	jbg:SetTitle( "" )
	jbg:ShowCloseButton( false )
	jbg:SetDraggable( false )
	jbg.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) )
	end
	jbg:MakePopup()

	local jobInfo = vgui.Create( "DFrame", jbg )
	jobInfo:SetSize( 300, 400 )
	jobInfo:SetPos( -500, ScrH() / 2 - 200 )
	jobInfo:ShowCloseButton( false )
	jobInfo.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( string.upper(team.GetName( index )), "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, 182 - 26, 44 )
	end
	jobInfo:MoveTo( ScrW() / 2 - 150, ScrH() / 2 - 200, 0.5, 0, 0.05 )
	
	local BG_CLOSE = vgui.Create( "DButton", jobInfo )
	BG_CLOSE:SetSize( 32, 32 )
	BG_CLOSE:SetPos( jobInfo:GetWide() - 38,6 )
	BG_CLOSE:SetText( "r" )
	BG_CLOSE:SetFont( "marlett" )
	BG_CLOSE:SetTextColor( Color( 166, 169, 172 ) )
	BG_CLOSE.Paint = function()
		
	end
	BG_CLOSE.DoClick = function()
		jobInfo:Close()
		jbg:Remove()
	end
	
	local STAFF_LIST = vgui.Create( "DPanelList", jobInfo )
	STAFF_LIST:SetSize( 270, 400 - 74 )
	STAFF_LIST:SetPos( 24, 50 )
	STAFF_LIST:SetSpacing( 2 )
	STAFF_LIST:EnableVerticalScrollbar( true )
	STAFF_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	STAFF_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	STAFF_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	STAFF_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	for k, v in pairs( player.GetAll() ) do
		if v:Team() == index then
			local PLY_PANEL = vgui.Create( "Panel" )
			PLY_PANEL:SetSize( 132, 40 )
			PLY_PANEL.Paint = function( self, w, h )
				draw.SimpleText( string.upper(v:Nick()), "RP_SubFontThick", 40, 12 - 6, Color( 0, 0, 0 ) )
				draw.SimpleText( string.upper(v:SteamID()), "RP_SubFontThick", 40, 26 - 6, Color( 195, 195, 195 ) )
			end
			
			local PLY_AVATAR = vgui.Create( "AvatarImage", PLY_PANEL )
			PLY_AVATAR:SetSize( 32, 32 )
			PLY_AVATAR:SetPos( 0, 6 )
			PLY_AVATAR:SetPlayer( v, 32 )
			
			STAFF_LIST:AddItem( PLY_PANEL )
		end
	end
end
/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/