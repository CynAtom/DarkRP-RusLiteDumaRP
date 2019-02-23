list.Set( "PlayerOptionsAnimations", "PD2_SWATShield_Zeal", { "idle_all_angry", "idle_all_01", "menu_walk" } )
player_manager.AddValidModel( "PD2_SWATShield_Zeal", "models/mark2580/payday2/pd2_swat_shield_zeal_player.mdl" )
player_manager.AddValidHands( "PD2_SWATShield_Zeal", "models/mark2580/payday2/pd2_swat_shield_zeal_c_arms.mdl", 0, "00000000" )

local function fixHealthAndModelBull( ply, ent )
  if IsValid(ent) then
    if ent:GetModel() == "models/mark2580/payday2/pd2_swat_shield_zeal_combine.mdl" then 
      ent:SetHealth( 300 )
      ent:SetMaxHealth( 300 )
    elseif ent:GetModel() == "models/mark2580/payday2/pd2_swat_shield_zeal_rebel.mdl" then 
      ent:SetHealth( 300 )
      ent:SetMaxHealth( 300 )
    end
  end
end

local Category = "PAYDAY 2 NPCs"

local NPC = {
  Name = "PD2 SWAT Heavy Zeal (Enemy)", 
  Class = "npc_combine_s",
  Model = "models/mark2580/payday2/pd2_swat_shield_zeal_combine.mdl",
  Weapons = { "weapon_smg1", "weapon_ar2", "weapon_shotgun" },
  Health = 100,
  KeyValues = {
    SquadName = "ZealTeam",
    Numgrenades = 5
  },
  Category = Category
}

list.Set( "NPC", "pd2_swat_shield_zeal_combine", NPC )

local NPC = {
  Name = "PD2 SWAT Heavy Zeal (Friendly)", 
  Class = "npc_citizen",
  Model = "models/mark2580/payday2/pd2_swat_shield_zeal_rebel.mdl",
  Health = 300,
  KeyValues = {
    citizentype = CT_UNIQUE
  },
  Weapons = { "weapon_pistol", "weapon_ar2", "weapon_smg1", "weapon_ar2", "weapon_shotgun" },
  Category = Category
}

list.Set( "NPC", "pd2_swat_shield_zeal_rebel", NPC )

hook.Add( "PlayerSpawnedNPC", "SWATShieldZealSpawned", fixHealthAndModelBull )