AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

/*---------------------------------------------------------
   Name: ENT:Initialize()
---------------------------------------------------------*/
function ENT:Initialize()

	self.Owner = self.Entity:GetOwner()

	if !IsValid(self.Owner) then
		self:Remove()
		return
	end

	self.Entity:SetModel("models/alyx_emptool_prop.mdl")
	self:SetMaterial("Models/effects/vol_light001")
	self:PhysicsInitSphere(10)
	self.Entity:SetMoveType(MOVETYPE_VPHYSICS)
	self.Entity:SetSolid(SOLID_VPHYSICS)
	self.Entity:DrawShadow(false)
	self:GetPhysicsObject():EnableGravity( true )
	self.Entity:SetCollisionGroup(COLLISION_GROUP_DEBRIS )
	
	local phys = self.Entity:GetPhysicsObject()


	self.Timer = CurTime() + 0.075
	self.Explode = false

//	util.SpriteTrail(self.Entity, 0, Color(255, 255, 0, 255), false, 2, 10, 5, 5 / ((2 + 10) * 0.5), "trails/laser.vmt")
end

function ENT:Think()

	if self.Timer < CurTime() then
		self.Explode = true
		self.Timer = CurTime() + 15
	end

	if self.Entity:WaterLevel() > 2 then
		self.Entity:Remove()
	end
end

function ENT:PhysicsCollide(data, physobj)
			self.Entity:Remove()

	if data.Speed > 50 then
		self.Entity:EmitSound(Sound("piss/piss.wav"))
	end

	if not self.Explode then 
		self.Entity:Fire("kill", "", 5)
		self.Entity:SetNWBool("Explode", true)
		self.Timer = CurTime() + 100
		self.Explode = false	
		return 
	end

	ParticleEffect( "slime_splash_01_droplets", data.HitPos, data.HitNormal:Angle( ) )
	self.Entity:Remove()
	
end
