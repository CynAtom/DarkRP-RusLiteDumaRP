
local mdl ={ 
			"models/kerry/sheriff/npc/male_01_sheriff.mdl",
			"models/kerry/sheriff/npc/male_02_sheriff.mdl",
			}
			
hook.Add("PlayerSpawnedNPC","RandomBodyGroupSheriff",function(ply,npc)
	if table.HasValue( mdl, npc:GetModel() ) 					
		then npc:SetSkin( math.random(0,4) )
			npc:SetBodygroup( 2, math.random(1,2) )
			npc:SetBodygroup( 3, math.random(2,3) )
			npc:SetBodygroup( 2, math.random(3,2) )
    end
end)