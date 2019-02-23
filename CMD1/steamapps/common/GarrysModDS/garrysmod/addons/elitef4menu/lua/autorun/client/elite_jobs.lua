/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
http://store.steampowered.com/curator/32364216

Subscribe to the channel:↓
www.youtube.com/c/Famouse

More leaks in the discord:↓ 
https://discord.gg/rFdQwzm
------------------------------------------------------------------------*/
local showVIP = true

local function PopulateJobList()
	for k, v in pairs( RPExtraTeams ) do
	
		local name = v.name
		local VIP = false
	
		local show = true
		if team.GetName( LocalPlayer():Team() ) == v.name then
				show = false
		elseif v.admin == 1 and not LocalPlayer():IsAdmin() then
				show = false
		end
		if v.admin > 1 and not LocalPlayer():IsSuperAdmin() then
				show = false
		end
		if v.customCheck and not showVIP then
			show = false
		end
		if v.customCheck then
			VIP = true
		end
		if (type(v.NeedToChangeFrom) == "number" and LocalPlayer():Team() ~= v.NeedToChangeFrom) or (type(v.NeedToChangeFrom) == "table" and not table.HasValue(v.NeedToChangeFrom, LocalPlayer():Team())) then
				show = false
		end
	
		if show then
			local jobFrame = vgui.Create( "DPanel" ) -- surface.DrawLine( 24, self:GetTall() - 44, self:GetWide() - 24, self:GetTall() - 44 )
			jobFrame:SetSize( JOB_LIST:GetWide(), 60 )
			jobFrame:SetTooltip( v.description )
			jobFrame.Paint = function( self, w, h )
			
				if VIP then
					draw.RoundedBox( 0, 0, 0, w, h, Color( 240, 251, 255 ) )
				end
			
				surface.SetDrawColor( Color( 242, 242, 242 ) )
			
				surface.DrawLine( 0, h - 1, w, h - 1 )
				
				draw.SimpleText( string.upper(name), "RP_SubFontThick", 56, 14, Color( 0, 0, 0 ) )
				draw.SimpleText( "Зарплата: €"..string.upper(v.salary), "RP_SubFontThick", 56, 30, Color( 190, 190, 190 ) )
			end
			jobFrame.OnCursorEntered = function( self )

			end
			jobFrame.OnCursorEntered = function( self )

			end
			
			JOB_LIST:AddItem( jobFrame )
			
			local jobButton = vgui.Create( "DButton", jobFrame )
			jobButton:SetSize( 90, 35 )
			jobButton:SetPos( jobFrame:GetWide() - 110, (jobFrame:GetTall() / 2) - 17.5 )
			jobButton:SetText( "Устроится" )
			jobButton:SetFont( "RP_ButtonFont" )
			jobButton:SetTextColor( Color( 255, 255, 255 ) )
			jobButton.Paint = function( self, w, h )
				draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
				draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
				draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
				
				if self.hover then
					draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
				end
			end
			jobButton.DoClick = function( self )
				if type(v.model) == "table" and table.Count( v.model ) > 1 then
					local CH_BG = vgui.Create( "DFrame" )
					CH_BG:SetSize( ScrW(), ScrH() )
					CH_BG:SetPos( 0, 0 )
					CH_BG:MakePopup()
					CH_BG:SetTitle( "" )
					CH_BG:ShowCloseButton( false )
					CH_BG.Paint = function()

					end

					local CH_MAIN = vgui.Create( "DFrame", CH_BG )
					CH_MAIN:SetSize( 400, 500 )
					CH_MAIN:Center()
					CH_MAIN:SetTitle( "" )
					CH_MAIN:ShowCloseButton( false )
					CH_MAIN.Init = function(self)
						self.startTime = SysTime()
					end
					CH_MAIN.Paint = function( self, w, h )
						draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
						draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
						
						draw.SimpleText( "CHOOSE MODEL", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
						
						surface.SetDrawColor( Color( 242, 242, 242 ) )
						surface.DrawLine( 24, 44, 182 - 26, 44 )
					end

					local cl = vgui.Create( "DButton", CH_MAIN )
					cl:SetSize( 50, 20 )
					cl:SetPos( CH_MAIN:GetWide() - 60, 0 )
					cl:SetText( "X" )
					cl:SetFont( "fontclose" )
					cl:SetTextColor( Color( 255, 255, 255, 255 ) )
					cl.Paint = function( self, w, h )
					local kcol
					if self.hover then
						kcol = Color( 255, 150, 150, 255 )
					else
						kcol = Color( 175, 100, 100 )
					end
						draw.RoundedBoxEx( 0, 0, 0, w, h, Color( 255, 150, 150, 255 ), false, false, true, true )
						draw.RoundedBoxEx( 0, 1, 0, w - 2, h - 1, kcol, false, false, true, true )
					end
					cl.DoClick = function()
						CH_BG:Close()
						--F4Menu:Close()
					end
					cl.OnCursorEntered = function( self )
						self.hover = true
					end
					cl.OnCursorExited = function( self )
						self.hover = false
					end

					local curModel = table.GetFirstValue( v.model )

					local CH_MODEL = vgui.Create( "DModelPanel", CH_MAIN )
					CH_MODEL:SetSize( 500, 460 )
					CH_MODEL:SetModel( curModel )
					CH_MODEL:Center()

					local CH_PREV = vgui.Create( "DButton", CH_MAIN )
					CH_PREV:SetSize( 40, 35 )
					CH_PREV:SetPos( 50, CH_MAIN:GetTall() - 50 )
					CH_PREV:SetText( "<" )
					CH_PREV:SetFont( "RP_ButtonFont" )
					CH_PREV:SetTextColor( Color( 255, 255, 255, 255 ) )
					CH_PREV.Paint = function( self, w, h )
						draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
						draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
						draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
						
						if self.hover then
							draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
						end
					end
					CH_PREV.OnCursorEntered = function( self )
						self.hover = true
					end
					CH_PREV.OnCursorExited = function( self )
						self.hover = false
					end
					CH_PREV.DoClick = function()
						local nextModel = table.FindPrev( v.model, curModel )
						CH_MODEL:SetModel( nextModel )
						curModel = nextModel

					end

					local CH_NEXT = vgui.Create( "DButton", CH_MAIN )
					CH_NEXT:SetSize( 40, 35 )
					CH_NEXT:SetPos( CH_MAIN:GetWide() - 90, CH_MAIN:GetTall() - 50 )
					CH_NEXT:SetText( ">" )
					CH_NEXT:SetFont( "RP_ButtonFont" )
					CH_NEXT:SetTextColor( Color( 255, 255, 255, 255 ) )
					CH_NEXT.Paint = function( self, w, h )
						draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
						draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
						draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
						
						if self.hover then
							draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
						end
					end
					CH_NEXT.DoClick = function()
						local nextModel = table.FindNext( v.model, curModel )
						CH_MODEL:SetModel( nextModel )
						curModel = nextModel
					end
					CH_NEXT.OnCursorEntered = function( self )
						self.hover = true
					end
					CH_NEXT.OnCursorExited = function( self )
						self.hover = false
					end

					local CH_OKAY = vgui.Create( "DButton", CH_MAIN )
					CH_OKAY:SetSize( 120, 35 )
					CH_OKAY:SetPos( CH_MAIN:GetWide() / 2 - 60, CH_MAIN:GetTall() - 50 )
					CH_OKAY:SetText( "Принять" )
					CH_OKAY:SetFont( "RP_ButtonFont" )
					CH_OKAY:SetTextColor( Color( 255, 255, 255, 255 ) )
					CH_OKAY.Paint = function( self, w, h )
						draw.RoundedBox( 4, 0, 0, w, h, Color( 239, 239, 243 ) )
						draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 232, 76, 82 ) )
						draw.RoundedBox( 4, 2, 2, w - 4, h - 4, Color( 233, 84, 90 ) )
						
						if self.hover then
							draw.RoundedBox( 4, 1, 1, w - 2, h - 2, Color( 206, 68, 73 ) )
						end
					end
					CH_OKAY.DoClick = function()
						
						for _, team in pairs( team.GetAllTeams() ) do
							if team.Name == v.name then
								DarkRP.setPreferredJobModel(_, curModel)
							end
						end
						
						if v.vote then
								if ((v.admin == 0 and LocalPlayer():IsAdmin()) or (v.admin == 1 and LocalPlayer():IsSuperAdmin())) then
										local menu = DermaMenu( CH_OKAY )
										menu:AddOption("Vote", function() RunCmd("/vote"..v.command)
											BG_PANEL:Remove()
											CH_MAIN:Close()
											CH_BG:Remove()
										end)
										menu:AddOption("Do not vote", function() RunCmd("/"..v.command)
											BG_PANEL:Remove()
											CH_MAIN:Close()
											CH_BG:Remove()
										end)
										menu:Open()
								else
										RunCmd("/vote"..v.command)
										BG_PANEL:Remove()
										CH_MAIN:Close()
										CH_BG:Remove()
								end
						else
							RunCmd("/"..v.command)
							BG_PANEL:Close()
							BG_PANEL:Remove()
							CH_BG:Remove()
						end
						
						
					end
					CH_OKAY.OnCursorEntered = function( self )
						self.hover = true
					end
					CH_OKAY.OnCursorExited = function( self )
						self.hover = false
					end
				else
					if v.vote then
						if ((v.admin == 0 and LocalPlayer():IsAdmin()) or (v.admin == 1 and LocalPlayer():IsSuperAdmin())) then
								local menu = DermaMenu( CH_MAIN )
								menu:AddOption("С голосованием", function() RunCmd("/vote"..v.command) BG_PANEL:Remove() end)
								menu:AddOption("Без голосования", function() RunCmd("/"..v.command) BG_PANEL:Remove() end)
								menu:Open()
						else
								RunCmd("/vote"..v.command)
								BG_PANEL:Remove()
						end
					else
						RunCmd("/"..v.command)
						BG_PANEL:Remove()
					end
				end
			end
			jobButton.OnCursorEntered = function( self )
				self.hover = true
			end
			jobButton.OnCursorExited = function( self )
				self.hover = false
			end
			
			local model
			
			if type( v.model ) == "table" then
				model = table.Random( v.model )
			else
				model = v.model
			end
			
			local jobModel = vgui.Create( "SpawnIcon", jobFrame )
			jobModel:SetSize( 52, 52 )
			jobModel:SetPos( 0, 8 )
			jobModel:SetModel( model )
			
		end
		
	end
end

function LoadCmdPanel()

	BG_HEADTEXT:SetText( "Работы" )
	BG_HEADTEXT:SizeToContents()
	
	JOB_MAIN = vgui.Create( "Panel", BG_MAIN )
	JOB_MAIN:SetSize( BG_MAIN:GetWide(), BG_MAIN:GetTall() )
	
	local JOB_SIDE = vgui.Create( "Panel", JOB_MAIN )
	JOB_SIDE:SetSize( BG_MAIN:GetWide() - 56, BG_MAIN:GetTall() - 50 )
	JOB_SIDE:SetPos( -200, 25 )
	JOB_SIDE.Paint = function( self, w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color( 239, 239, 239 ) )
		draw.RoundedBox( 2, 1, 1, w - 2, h - 2, Color( 255, 255, 255 ) )
		
		draw.SimpleText( "Список работ", "RP_SubFontThick", 24, 20, Color( 190, 190, 190 ) )
		
		surface.SetDrawColor( Color( 242, 242, 242 ) )
		surface.DrawLine( 24, 44, w - 26, 44 )
	end
	
	if ELITE.VIPJobCheckbox then
		local VIP_CHECK = vgui.Create( "DCheckBoxLabel", JOB_SIDE )
		VIP_CHECK:SetPos( JOB_SIDE:GetWide() - 200, 20 )
		VIP_CHECK:SetText( "Показывать VIP работы" )
		VIP_CHECK:SetTextColor( Color(0, 0, 0) )
		VIP_CHECK:SetChecked( true )
		VIP_CHECK.OnChange = function( self, val )
			showVIP = val
			JOB_LIST:Clear()
			PopulateJobList()
		end
		VIP_CHECK:SizeToContents()
	end
	
	JOB_LIST = vgui.Create( "DPanelList", JOB_SIDE )
	JOB_LIST:SetPos( 24, 44 )
	JOB_LIST:SetSize( JOB_SIDE:GetWide() - 30, JOB_SIDE:GetTall() - 54 )
	JOB_LIST:EnableVerticalScrollbar( true )
	JOB_LIST:DockPadding( 0, 5, 10, 0 )
	JOB_LIST.VBar.Paint = function( s, w, h )
		draw.RoundedBox( 4, 3, 13, 8, h-24, Color(0,0,0,70))
	end
	JOB_LIST.VBar.btnUp.Paint = function( s, w, h ) end
	JOB_LIST.VBar.btnDown.Paint = function( s, w, h ) end
	JOB_LIST.VBar.btnGrip.Paint = function( s, w, h )
		draw.RoundedBox( 4, 5, 0, 4, h+22, Color(0,0,0,70))
	end
	
	PopulateJobList()
	
	JOB_SIDE:MoveTo( 28, 25, 0.2, 0, 0.2 )
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