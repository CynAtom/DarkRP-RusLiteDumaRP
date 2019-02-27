function OpenTextBox( text1, text2, cmd )

	local jbg = vgui.Create( "DFrame" )
	jbg:SetSize( ScrW(), ScrH() )
	jbg:SetTitle( "" )
	jbg:ShowCloseButton( false )
	jbg:SetDraggable( false )
	jbg.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) )
	end
	jbg:MakePopup()

	local bg = vgui.Create( "DFrame", jbg )
	bg:SetSize( 300, 200 )
	bg:SetPos( -500, ScrH() / 2 - 200 )
	bg:ShowCloseButton( false )
	bg.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( string.upper( text1 ), "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, 182 - 26, 44 )
	end
	bg:MoveTo( ScrW() / 2 - 150, ScrH() / 2 - 200, 0.5, 0, 0.05 )
	
	local label = vgui.Create( "DLabel", bg )
	label:SetPos( 28, 54 )
	label:SetSize( bg:GetWide() - 56, 40 )
	label:SetWrap( true )
	label:SetText( string.upper(text2) )
	label:SetFont( "RP_SubFontThin" )
	label:SetTextColor( Color( 190, 190, 190 ) )
	
	local BG_CLOSE = vgui.Create( "DButton", bg )
	BG_CLOSE:SetSize( 32, 32 )
	BG_CLOSE:SetPos( bg:GetWide() - 38,6 )
	BG_CLOSE:SetText( "r" )
	BG_CLOSE:SetFont( "marlett" )
	BG_CLOSE:SetTextColor( Color( 166, 169, 172 ) )
	BG_CLOSE.Paint = function()
		
	end
	BG_CLOSE.DoClick = function()
		bg:Close()
		jbg:Remove()
	end

	local myText = vgui.Create("DTextEntry", bg)
	myText:SetText("")
	myText:SetPos( bg:GetWide() / 2 - 100, bg:GetTall() - 80 )
	myText:SetSize( 200, 20	)
	myText.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color(230,230,230))
		draw.RoundedBox( 0, 1, 1, w-2, h-2, Color(255,255,255))
		self:DrawTextEntryText(Color(30, 30, 30), Color(149, 240, 193), Color(0, 0, 0))
	end

	local ybut = vgui.Create( "DButton", bg )
	ybut:SetSize( 80, 35 )
	ybut:SetPos( bg:GetWide() / 2 - 40, bg:GetTall() - 44 )
	ybut:SetText( "Принять" )
	ybut:SetFont( "RP_ButtonFont" )
	ybut:SetTextColor( Color( 255, 255, 255 ) )
	ybut.Paint = function( self, w, h )
		draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
		draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
		draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
		
		if self.hover then
			draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
		end
	end
	ybut.OnCursorEntered = function( self )
		self.hover = true
	end
	ybut.OnCursorExited = function( self )
		self.hover = false
	end
	ybut.DoClick = function()
		local amt = myText:GetValue()
		local str = cmd.." "..amt
		if amt then
			RunConsoleCommand( "say", str )
		end
		bg:Close()
		jbg:Close()
		textOpen = false
	end
end

function OpenPlyBox( text1, text2, cmd )

	local jbg = vgui.Create( "DFrame" )
	jbg:SetSize( ScrW(), ScrH() )
	jbg:SetTitle( "" )
	jbg:ShowCloseButton( false )
	jbg:SetDraggable( false )
	jbg.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) )
	end
	jbg:MakePopup()

	local bg = vgui.Create( "DFrame", jbg )
	bg:SetSize( 300, 200 )
	bg:SetPos( -500, ScrH() / 2 - 200 )
	bg:ShowCloseButton( false )
	bg.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( string.upper( text1 ), "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, 182 - 26, 44 )
	end
	bg:MoveTo( ScrW() / 2 - 150, ScrH() / 2 - 200, 0.5, 0, 0.05 )
	
	local label = vgui.Create( "DLabel", bg )
	label:SetPos( 28, 54 )
	label:SetSize( bg:GetWide() - 56, 40 )
	label:SetWrap( true )
	label:SetText( string.upper(text2) )
	label:SetFont( "RP_SubFontThin" )
	label:SetTextColor( Color( 190, 190, 190 ) )
	
	local BG_CLOSE = vgui.Create( "DButton", bg )
	BG_CLOSE:SetSize( 32, 32 )
	BG_CLOSE:SetPos( bg:GetWide() - 38,6 )
	BG_CLOSE:SetText( "r" )
	BG_CLOSE:SetFont( "marlett" )
	BG_CLOSE:SetTextColor( Color( 166, 169, 172 ) )
	BG_CLOSE.Paint = function()
		
	end
	BG_CLOSE.DoClick = function()
		bg:Close()
		jbg:Remove()
	end

	local hl = vgui.Create( "DComboBox", bg)
	hl:SetPos(bg:GetWide() / 2 - 100, bg:GetTall() - 74)
	hl:SetSize( 200, 20 )
	for k,v in pairs(player.GetAll()) do
			hl:AddChoice( v:Name() )
	end

	hl.OnSelect = function( panel, index, value, data )
		target = string.Explode( " ", value )[1]
	end

	local ybut = vgui.Create( "DButton", bg )
	ybut:SetSize( 80, 35 )
	ybut:SetPos( bg:GetWide() / 2 - 40, bg:GetTall() - 44 )
	ybut:SetText( "Принять" )
	ybut:SetFont( "RP_ButtonFont" )
	ybut:SetTextColor( Color( 255, 255, 255 ) )
	ybut.Paint = function( self, w, h )
		draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
		draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
		draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
		
		if self.hover then
			draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
		end
	end
	ybut.OnCursorEntered = function( self )
		self.hover = true
	end
	ybut.OnCursorExited = function( self )
		self.hover = false
	end
	ybut.DoClick = function()
		local str = cmd.." "..target
		if target then
			RunConsoleCommand( "say", str )
		end
		bg:Close()
		jbg:Close()
		textOpen = false
	end
end

function OpenPlyReasonBox( text1, text2, text3, cmd )

	local jbg = vgui.Create( "DFrame" )
	jbg:SetSize( ScrW(), ScrH() )
	jbg:SetTitle( "" )
	jbg:ShowCloseButton( false )
	jbg:SetDraggable( false )
	jbg.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 250 ) )
	end
	jbg:MakePopup()

	local bg = vgui.Create( "DFrame", jbg )
	bg:SetSize( 300, 250 )
	bg:SetPos( -500, ScrH() / 2 - 200 )
	bg:ShowCloseButton( false )
	bg.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( string.upper( text1 ), "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, 182 - 26, 44 )
	end
	bg:MoveTo( ScrW() / 2 - 150, ScrH() / 2 - 200, 0.5, 0, 0.05 )
	
	local label = vgui.Create( "DLabel", bg )
	label:SetPos( 28, 54 )
	label:SetSize( bg:GetWide() - 56, 40 )
	label:SetWrap( true )
	label:SetText( string.upper(text2) )
	label:SetFont( "RP_SubFontThin" )
	label:SetTextColor( Color( 190, 190, 190 ) )
	
	local BG_CLOSE = vgui.Create( "DButton", bg )
	BG_CLOSE:SetSize( 32, 32 )
	BG_CLOSE:SetPos( bg:GetWide() - 38,6 )
	BG_CLOSE:SetText( "r" )
	BG_CLOSE:SetFont( "marlett" )
	BG_CLOSE:SetTextColor( Color( 166, 169, 172 ) )
	BG_CLOSE.Paint = function()
		
	end
	BG_CLOSE.DoClick = function()
		bg:Close()
		jbg:Remove()
	end

	local target

	local hl = vgui.Create( "DComboBox", bg)
	hl:SetPos(bg:GetWide() / 2 - 100, bg:GetTall() - 120)
	hl:SetSize( 200, 20 )
	for k,v in pairs(player.GetAll()) do
			hl:AddChoice( v:Name() )
	end

	hl.OnSelect = function( panel, index, value, data )
		target = string.Explode( " ", value )[1]
	end

	local myText = vgui.Create("DTextEntry", bg)
	myText:SetText("")
	myText:SetPos( bg:GetWide() / 2 - 100, bg:GetTall() - 74 )
	myText:SetSize( 200, 20	)
	myText.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color(230,230,230))
		draw.RoundedBox( 0, 1, 1, w-2, h-2, Color(255,255,255))
		self:DrawTextEntryText(Color(30, 30, 30), Color(149, 240, 193), Color(0, 0, 0))
	end

	local ybut = vgui.Create( "DButton", bg )
	ybut:SetSize( 80, 35 )
	ybut:SetPos( bg:GetWide() / 2 - 40, bg:GetTall() - 44 )
	ybut:SetText( "Принять" )
	ybut:SetFont( "RP_ButtonFont" )
	ybut:SetTextColor( Color( 255, 255, 255 ) )
	ybut.Paint = function( self, w, h )
		draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
		draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
		draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
		
		if self.hover then
			draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
		end
	end
	ybut.OnCursorEntered = function( self )
		self.hover = true
	end
	ybut.OnCursorExited = function( self )
		self.hover = false
	end
	ybut.DoClick = function()
		local amt = myText:GetValue()
		local str = cmd.." "..target.." "..amt
		if amt and target then
			RunConsoleCommand( "say", str )
		end
		bg:Close()
		jbg:Close()
		textOpen = false
	end
end