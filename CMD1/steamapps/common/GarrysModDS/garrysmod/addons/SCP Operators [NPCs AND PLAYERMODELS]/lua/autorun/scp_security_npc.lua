local Category = "SCP Security Operators"
 
local NPC = {   Name = "Heavy SCP Security Operator Hostile", 
                Class = "npc_combine",
                Model = "models/scp_operators/scp_security_heavy_e_npc.mdl",
                Health = "100", 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_scp_security_heavy_hostile", NPC )


local Category = "SCP Security Operators"
 
local NPC = {   Name = "Heavy SCP Security Operator Friendly", 
                Class = "npc_citizen",
                Model = "models/scp_operators/scp_security_heavy_f_npc.mdl", 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_scp_security_heavy_ally", NPC )


local Category = "SCP Security Operators"
 
local NPC = {   Name = "Light SCP Security Operator Hostile", 
                Class = "npc_combine",
                Model = "models/scp_operators/scp_security_light_e_npc.mdl",
                Health = "100", 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_scp_security_light_hostile", NPC )


local Category = "SCP Security Operators"
 
local NPC = {   Name = "Light SCP Security Operator Friendly", 
                Class = "npc_citizen",
                Model = "models/scp_operators/scp_security_light_f_npc.mdl", 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_scp_security_light_ally", NPC )


local Category = "SCP Security Operators"
 
local NPC = {   Name = "Standard SCP Security Operator Hostile", 
                Class = "npc_combine",
                Model = "models/scp_operators/scp_security_standard_e_npc.mdl",
                Health = "100", 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_scp_security_standard_hostile", NPC )


local Category = "SCP Security Operators"
 
local NPC = {   Name = "Standard SCP Security Operator Friendly", 
                Class = "npc_citizen",
                Model = "models/scp_operators/scp_security_standard_f_npc.mdl", 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_scp_security_standard_ally", NPC )