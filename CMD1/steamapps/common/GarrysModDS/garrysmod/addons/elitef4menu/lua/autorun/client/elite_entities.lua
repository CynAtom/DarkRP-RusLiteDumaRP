/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
store.steampowered.com/curator/32364216

Subscribe to the channel:↓
https://www.youtube.com/c/Famouse

More leaks in the discord:↓ 
discord.gg/rFdQwzm
------------------------------------------------------------------------*/
function LoadEntitiesPanel()

	BG_HEADTEXT:SetText( "Предметы" )
	BG_HEADTEXT:SizeToContents()
	
	ENT_MAIN = vgui.Create( "Panel", BG_MAIN )
	ENT_MAIN:SetSize( BG_MAIN:GetWide(), BG_MAIN:GetTall() )
	
	local ENT_WINDOW = vgui.Create( "Panel", ENT_MAIN )
	ENT_WINDOW:SetSize( BG_MAIN:GetWide() - 56, BG_MAIN:GetTall() - 50 )
	ENT_WINDOW:SetPos( -200, 25 )
	ENT_WINDOW.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Предметы", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, w - 26, 44 )
	end
	
	local ENT_LIST = vgui.Create( "DPanelList", ENT_WINDOW )
	ENT_LIST:SetPos( 24, 44 )
	ENT_LIST:SetSize( ENT_WINDOW:GetWide() - 30, ENT_WINDOW:GetTall() - 54 )
	ENT_LIST:EnableVerticalScrollbar( true )
	ENT_LIST:DockPadding( 0, 5, 10, 0 )
	ENT_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	ENT_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	ENT_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	ENT_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	for k, v in pairs( DarkRPEntities ) do
	
		if not v.allowed or (type(v.allowed) == "table" and table.HasValue(v.allowed, LocalPlayer():Team()))
            and (not v.customCheck or (v.customCheck and v.customCheck(LocalPlayer()))) then
	
			local entFrame = vgui.Create( "DPanel" ) -- surface.DrawLine( 24, self:GetTall() - 44, self:GetWide() - 24, self:GetTall() - 44 )
			entFrame:SetSize( ENT_LIST:GetWide(), 60 )
			entFrame.Paint = function( self, w, h )
			
				surface.SetDrawColor( Color( 242, 242, 242 ) )
			
				surface.DrawLine( 0, h - 1, w, h - 1 )
				
				draw.SimpleText( string.upper(v.name), "RP_SubFontThick", 56, 14, Color( 0, 0, 0 ) )
				draw.SimpleText( "Цена: €"..string.upper(v.price), "RP_SubFontThick", 56, 30, Color( 190, 190, 190 ) )
			end
			entFrame.OnCursorEntered = function( self )

			end
			entFrame.OnCursorEntered = function( self )

			end
			
			ENT_LIST:AddItem( entFrame )
			
			local entButton = vgui.Create( "DButton", entFrame )
			entButton:SetSize( 90, 35 )
			entButton:SetPos( entFrame:GetWide() - 110, (entFrame:GetTall() / 2) - 17.5 )
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
				RunEntCmd(v.cmd)
			end
			
			local entModel = vgui.Create( "SpawnIcon", entFrame )
			entModel:SetSize( 52, 52 )
			entModel:SetPos( 0, 8 )
			entModel:SetModel( v.model )
			
		end
		
	end
	
	ENT_WINDOW:MoveTo( 28, 25, 0.2, 0, 0.2 )
	--HOME_STATS:MoveTo( 222, 25, 0.4, 0.2, 0.1 )
	--HOME_INFO:MoveTo( 28, 330, 0.6, 0.2, 0.1 )
end
/*------------------------------------------------------------------------

------------------------------------------------------------------------*/