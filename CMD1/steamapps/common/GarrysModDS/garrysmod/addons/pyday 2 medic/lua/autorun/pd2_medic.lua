list.Set( "PlayerOptionsAnimations", "PD2_Medic", { "idle_suitcase", "menu_combine", "idle_all_01" } )
player_manager.AddValidModel( "PD2_Medic", "models/payday2/units/medic_player.mdl" )
player_manager.AddValidHands( "PD2_Medic", "models/payday2/units/medic_arms.mdl",	0, "0000000" )

local Category = "PAYDAY 2 NPCs"

local NPC = { 	Name = "PD2 Medic (Enemy)", 
				Class = "npc_combine_s",
				Model = "models/payday2/units/medic_combine.mdl",
				Health = "200",
				Squadname = "Killing",
				Numgrenades = "4",
				Weapons = { "weapon_ar2", "weapon_smg1" },
                                Category = Category    }

list.Set( "NPC", "pd2_medic_combine", NPC )

local NPC = { 	Name = "PD2 Medic (Friendly)", 
				Class = "npc_citizen",
				Model = "models/payday2/units/medic_rebel.mdl",
				Health = "450",
				SpawnFlags = SF_CITIZEN_MEDIC,
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_ar2", "weapon_smg1" },
                                Category = Category    }

list.Set( "NPC", "pd2_medic_rebel", NPC )