local Category = "Obese Male"

local function fixHealthAndModelBull( ply, ent )
  if IsValid(ent) then
    if ent:GetModel() == "models/dawson/obese_male_deluxe/obese_male_deluxe_combine.mdl" then 
      ent:SetHealth( 75 )
      ent:SetMaxHealth( 75 )
    elseif ent:GetModel() == "models/dawson/obese_male_deluxe/obese_male_deluxe_rebel.mdl" then 
      ent:SetHealth( 75 )
      ent:SetMaxHealth( 75 )
    end
  end
end

local NPC = {
  Name = "Obese Male (Hostile)", 
  Class = "npc_combine_s",
  Model = "models/dawson/obese_male_deluxe/obese_male_deluxe_combine.mdl",
  Weapons = { "weapon_smg1", "weapon_ar2", "weapon_shotgun" },
  Health = 75,
 KeyValues = {
    SquadName = "GarogCombine",
    Numgrenades = 5
  },
  Category = Category
}

list.Set( "NPC", "obese_male_deluxe_combine", NPC )

local NPC = {
  Name = "Obese Male (Friendly)", 
  Class = "npc_citizen",
  -- SpawnFlags = SF_CITIZEN_RANDOM_HEAD_MALE,
  Model = "models/dawson/obese_male_deluxe/obese_male_deluxe_rebel.mdl",
  Health = 75,
  KeyValues = {
    --SquadName = "ObeseBrigade",
    citizentype = CT_UNIQUE --CT_REBEL CT_UNIQUE
  },
  Weapons = { "weapon_pistol", "weapon_ar2", "weapon_smg1", "weapon_ar2", "weapon_shotgun" },
  Category = Category
}

list.Set( "NPC", "obese_male_deluxe_rebel", NPC )

hook.Add( "PlayerSpawnedNPC", "ObeseMaleSpawned", fixHealthAndModelBull )