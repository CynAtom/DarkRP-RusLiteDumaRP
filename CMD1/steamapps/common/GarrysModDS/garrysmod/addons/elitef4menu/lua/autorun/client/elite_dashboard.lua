/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
store.steampowered.com/curator/32364216

Subscribe to the channel:↓
www.youtube.com/c/Famouse

More leaks in the discord:↓ 
https://discord.gg/rFdQwzm
------------------------------------------------------------------------*/
function LoadHomePanel()
	
	BG_HEADTEXT:SetText( "Меню сервера" )
	BG_HEADTEXT:SizeToContents()

	HOME_MAIN = vgui.Create( "Panel", BG_MAIN )
	HOME_MAIN:SetSize( BG_MAIN:GetWide(), BG_MAIN:GetTall() )
	
	local HOME_STAFF = vgui.Create( "Panel", HOME_MAIN )
	HOME_STAFF:SetSize( 182, 290 )
	HOME_STAFF:SetPos( -200, 25 )
	HOME_STAFF.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Администрация", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, 182 - 26, 44 )
	end
	
	local STAFF_LIST = vgui.Create( "DPanelList", HOME_STAFF )
	STAFF_LIST:SetSize( 132, 290 - 50 )
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
		if table.HasValue( ELITE.StaffListRanks, v:GetUserGroup()) then
			local PLY_PANEL = vgui.Create( "Panel" )
			PLY_PANEL:SetSize( 132, 40 )
			PLY_PANEL.Paint = function( self, w, h )
				--draw.SimpleText( string.upper(v:Nick()), "RP_SubFontThick", 40, 12 - 6, Color( 0, 0, 0 ) )
				--draw.SimpleText( string.upper(v:GetUserGroup()), "RP_SubFontThick", 40, 26 - 6, Color( 195, 195, 195 ) )
			end
			
			local PLY_NAME = vgui.Create( "DLabel", PLY_PANEL )
			PLY_NAME:SetSize( 128, 10 )
			PLY_NAME:SetPos( 40, 8 )
			PLY_NAME:SetFont( "RP_SubFontThick" )
			PLY_NAME:SetText( string.upper(v:Nick()) )
			PLY_NAME:SetTextColor( Color( 0, 0, 0 ) )
			
			local PLY_NAME = vgui.Create( "DLabel", PLY_PANEL )
			PLY_NAME:SetSize( 128, 10 )
			PLY_NAME:SetPos( 40, 22 )
			PLY_NAME:SetFont( "RP_SubFontThick" )
			PLY_NAME:SetText( string.upper(v:GetUserGroup()) )
			PLY_NAME:SetTextColor( Color( 195, 195, 195 ) )
			
			local PLY_AVATAR = vgui.Create( "AvatarImage", PLY_PANEL )
			PLY_AVATAR:SetSize( 32, 32 )
			PLY_AVATAR:SetPos( 0, 6 )
			PLY_AVATAR:SetPlayer( v, 32 )
			
			STAFF_LIST:AddItem( PLY_PANEL )
		end
	end
	
	local totalMoney = 0
	local highBase = 0
	local money = 0
	
	local maxBase = 0
	
	local jobs = {}
	
	for k, v in pairs( player.GetAll() ) do
		local vMoney = v:getDarkRPVar( "money" ) or 0
		money = money + vMoney
	end
	
	local mTable = {}
		
	for k, v in pairs( player.GetAll() ) do
		table.insert( mTable, { ply = v, money = v:getDarkRPVar( "money" ) or 0 } )
	end
	
	for k, v in pairs( team.GetAllTeams() ) do
		if team.NumPlayers( k ) > 0 then
			table.insert( jobs, v )
		end
	end
	
	table.SortByMember( mTable, "money" )
	
	local first = table.GetFirstValue( mTable )
	
	local jobTable = team.GetAllTeams()
	
	local teamTable = {}
	
	for k, v in pairs( jobTable ) do
		if v.Name != "Joining/Connecting" then
		
			local numPlayers = team.NumPlayers( k )
			
			teamTable[k] = numPlayers
			
		end
	end
	
	local maxPlayers = table.Count( player.GetAll() )
	
	local HOME_STATS = vgui.Create( "Panel", HOME_MAIN )
	HOME_STATS:SetSize( HOME_MAIN:GetWide() - 182 - 16 - 10 - 28 - 20, 290 )
	HOME_STATS:SetPos( 730, 25 )
	HOME_STATS.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Статистика сервера", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, self:GetWide() - 24, 44 )
		surface.DrawLine( 24, self:GetTall() - 44, self:GetWide() - 24, self:GetTall() - 44 )
		surface.DrawLine( 24, self:GetTall() - 164, self:GetWide() - 24, self:GetTall() - 164 )
		surface.DrawLine( 24, self:GetTall() - 104, self:GetWide() - 24, self:GetTall() - 104 )
		
		surface.DrawLine( 84, 70, 84, self:GetTall() - 44 )
		
		surface.SetDrawColor( Color( 52, 152, 219 ) )
		surface.SetMaterial( Material( "elitef4menu/ribbon.png" ) )
		surface.DrawTexturedRect( 24, 80, 60, 18 )
		
		draw.SimpleText( "Игроки", "RP_CatFont", 30, 83, Color( 255, 255, 255 ) )
		
		draw.SimpleText( maxPlayers.." Игроки онлайн", "RP_SubFontThick", 92, 77, Color( 0, 0, 0 ) )
		draw.SimpleText( GetConVarNumber( "maxplayers" ).." Количесво слотов", "RP_SubFontThick", 92, 94, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 39, 174, 96 ) )
		surface.SetMaterial( Material( "elitef4menu/ribbon.png" ) )
		surface.DrawTexturedRect( 24, 140, 60, 18 )
		
		draw.SimpleText( "Экономика", "RP_CatFont", 27, 143, Color( 255, 255, 255 ) )
		
		if totalMoney != money then
			totalMoney = Lerp( FrameTime() * 5, totalMoney, money )
		end
		
		if highBase != first.money then
			highBase = Lerp( FrameTime() * 5, highBase, first.money )
		end
		
		local tMoney = string.Comma(math.ceil(totalMoney)) or "Error Loading"
		local highMoney = string.Comma(math.ceil( highBase )) or "Error Loading"
		
		draw.SimpleText( "$"..tMoney.." — Всего денег на сервере", "RP_SubFontThick", 92, 137, Color( 0, 0, 0 ) )
		draw.SimpleText( "$"..highMoney.." самый богатый на сервере - "..string.upper(first.ply:Nick()), "RP_SubFontThick", 92, 154, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 211, 84, 0 ) )
		surface.SetMaterial( Material( "elitef4menu/ribbon.png" ) )
		surface.DrawTexturedRect( 24, 200, 60, 18 )
		
		draw.SimpleText( "Работы", "RP_CatFont", 30, 203, Color( 255, 255, 255 ) )
		
		draw.SimpleText( table.Count( jobs ).." Работ используется", "RP_SubFontThick", 92, 197, Color( 0, 0, 0 ) )
		draw.SimpleText( "Наиболее популярная - "..string.upper(team.GetName( table.GetWinningKey( teamTable ) )).." ("..team.NumPlayers(table.GetWinningKey( teamTable )).." работают)", "RP_SubFontThick", 92, 197 + 17, Color( 190, 190, 190 ) )
		
	end
	
	local HOME_INFO = vgui.Create( "Panel", HOME_MAIN )
	HOME_INFO:SetSize( HOME_STAFF:GetWide() + HOME_STATS:GetWide() + 10, 120 )
	HOME_INFO:SetPos( 28, 500 )
	HOME_INFO.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "График работ", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, 182 - 26, 44 )
		
		local jobNum = {}
		
		for k, v in pairs( team.GetAllTeams() ) do
			jobNum[v.Name] = 0
			for _, ply in pairs( player.GetAll() ) do
				if team.GetName(ply:Team()) == v.Name then
					jobNum[v.Name] = jobNum[v.Name] + 1
				end
			end
		end
		
		local all = table.Count( player.GetAll() )
		
		local offset = 2
		
		draw.RoundedBox( 0, 24 + offset - 2, HOME_INFO:GetTall() - 56 - 2, 604, 24 + 4, Color( 180, 180, 180 ) )
		
	end
	
	local jobNum = {}
		
	for k, v in pairs( team.GetAllTeams() ) do
		jobNum[v.Name] = 0
		for _, ply in pairs( player.GetAll() ) do
			if team.GetName(ply:Team()) == v.Name then
				jobNum[v.Name] = jobNum[v.Name] + 1
			end
		end
	end
	
	local all = table.Count( player.GetAll() )
	
	local offset = 2
	
	for k, v in pairs( jobNum ) do
		local ratio = (v/all) * 600
		for _, team in pairs( team.GetAllTeams() ) do
		
			if team.Name == k then

			
				local barjob = vgui.Create( "DButton", HOME_INFO )
				barjob:SetSize( ratio, 24 )
				barjob:SetPos( 24+offset, HOME_INFO:GetTall() - 56 )
				barjob:SetText( "" )
				barjob:SetTooltip( k )
				barjob.Paint = function( self, w, h )
					draw.RoundedBox( 0, 0, 0, w, h, team.Color )
				end
				barjob.DoClick = function( self )
					OpenJobInfo( _ )
				end
				
				offset = offset + ratio
			
				--draw.RoundedBox( 0, 24 + offset, HOME_INFO:GetTall() - 56, ratio, 24, team.Color )
				
				--offset = offset + ratio

			end
		end
	end
	
	HOME_STAFF:MoveTo( 28, 25, 0.2, 0, 0.2 )
	HOME_STATS:MoveTo( 222, 25, 0.4, 0.2, 0.1 )
	HOME_INFO:MoveTo( 28, 330, 0.6, 0.2, 0.1 )
	
end

/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/