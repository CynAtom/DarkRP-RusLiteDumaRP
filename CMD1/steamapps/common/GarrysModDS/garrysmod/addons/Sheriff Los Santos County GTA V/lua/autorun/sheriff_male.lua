
player_manager.AddValidModel( "Sheriff 1","models/kerry/sheriff/male_01_sheriff.mdl" )
list.Set( "PlayerOptionsModel","Sheriff 1","models/kerry/sheriff/male_01_sheriff.mdl" )


player_manager.AddValidModel( "Sheriff 2","models/kerry/sheriff/male_02_sheriff.mdl" )
list.Set( "PlayerOptionsModel","Sheriff 2","models/kerry/sheriff/male_02_sheriff.mdl")

local Category = "Sheriff NPCs"
local NPC = { 	Name = "Sheriff Frend", 
				Class = "npc_citizen",
				Model = "models/kerry/sheriff/npc/male_02_sheriff.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }
list.Set( "NPC", "sheriff1", NPC )

local Category = "Sheriff NPCs"
local NPC = { 	Name = "Sheriff Frend 2", 
				Class = "npc_citizen",
				Model = "models/kerry/sheriff/npc/male_01_sheriff.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }
list.Set( "NPC", "sheriff2", NPC )

local Category = "Sheriff NPCs"
local NPC = { 	Name = "Sheriff Hostile", 
				Class = "npc_combine_s",
				Model = "models/kerry/sheriff/npc/male_02_sheriff.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }
list.Set( "NPC", "sheriff3", NPC )

local Category = "Sheriff NPCs"
local NPC = { 	Name = "Sheriff Hostile 2", 
				Class = "npc_combine_s",
				Model = "models/kerry/sheriff/npc/male_01_sheriff.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }
list.Set( "NPC", "sheriff4", NPC )



