AddCSLuaFile()

SWEP.PrintName = "SCP-173 (Fixed)"
SWEP.Author = "Bio | buttermanbug"
SWEP.Instructions = "Primary : Attack\nSecondary : Teleport"
SWEP.Purpose = ""
SWEP.Category = "SCP 173 Fixed"

SWEP.AdminOnly =true
SWEP.Spawnable = true
SWEP.UseHands = true

SWEP.ViewModel = ("")
SWEP.WorldModel	= ("")

SWEP.MissSound = Sound( "" )
SWEP.WallSound = Sound( "Weapon_Crowbar.Melee_Hit" )

SWEP.Primary.Damage = 100000 
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Delay 			= 0.5

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.Delay		= 2

function SWEP:Initialize()
	self:SetWeaponHoldType( "normal" )
	Entity( 1 ):SetHealth( Entity( 1 ):Health() + 50000 )
end

function SWEP:PrimaryAttack()

	local tr = {}
	tr.start = self.Owner:GetShootPos()
	tr.endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 100 )
	tr.filter = self.Owner
	tr.mask = MASK_SHOT
	local trace = util.TraceLine( tr )

	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	if ( trace.Hit ) then

		if trace.Entity:IsPlayer() or string.find(trace.Entity:GetClass(),"npc") or string.find(trace.Entity:GetClass(),"prop_ragdoll") then
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 0
			bullet.Force  = 2
			bullet.Damage = 1000
			self.Owner:FireBullets(bullet) 
			
		else
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 0
			bullet.Force  = 1
			bullet.Damage = self.Primary.Damage
		    self.Owner:FireBullets(bullet) 
		    self.Weapon:EmitSound( self.WallSound )		
		end	
	end
end

function SWEP:SecondaryAttack( tr ) 
local ply = self.Owner
local t = {} 
t.start = ply:GetPos() + Vector( 0, 0, 32 ) 
t.endpos = ply:GetPos() + ply:EyeAngles():Forward() * 1000
t.filter = ply 
local tr = util.TraceEntity( t, ply ) 
ply:SetPos( tr.HitPos )
self.Owner:EmitSound("ambient/materials/rock"..math.random(1, 4)..".wav", 100, 85)
self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
	if self.Transparency == 0 then
		self:ResetVis()
	end
end

function SWEP:NormalSpeed()
	if self.Owner:IsValid() then
	self.Owner:SetRunSpeed(250)
	self.Owner:SetWalkSpeed(100)
	end
end

function SWEP:CustomSpeed()
	if self.Owner:IsValid() then
	self.Owner:SetRunSpeed(325)
	self.Owner:SetWalkSpeed(200)
	end
end

util.PrecacheSound("ambient/materials/rock1.wav")
util.PrecacheSound("ambient/materials/rock2.wav")
util.PrecacheSound("ambient/materials/rock3.wav")
util.PrecacheSound("ambient/materials/rock4.wav")