

player_manager.AddValidModel( "RE2R - Hunk", 		"models/auditor/re2/chr_hunk_pmrig.mdl" );
list.Set( "PlayerOptionsModel", "RE2R - Hunk", 	"models/auditor/re2/chr_hunk_pmrig.mdl" );
player_manager.AddValidHands( "RE2R - Hunk", "models/auditor/re2/c_hunk_viewhand.mdl", 0, "00000000" )
--Add NPC
local Category = "Auditor's NPCs"

local NPC = { 	Name = "Hunk - Friendly", 
				Class = "npc_citizen",
				Model = "models/auditor/re2/chr_hunk_npc_f.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "hunk_friendly", NPC )

--Add NPC
local Category = "Auditor's NPCs"

local NPC = { 	Name = "Hunk - Hostile", 
				Class = "npc_combine_s",
				Model = "models/auditor/re2/chr_hunk_npc_h.mdl",
				Health = "100",
				Squadname = "PLAGUE",
				Numgrenades = "4",
                                Category = Category    }

list.Set( "NPC", "hunk_combine", NPC )