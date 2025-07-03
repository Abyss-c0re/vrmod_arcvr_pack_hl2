AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/launcher_rpg_hl2.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 4
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "RPG_Round"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR RPG Launcher"
SWEP.Slot = 4
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.MuzzleVelocity = 120000
SWEP.ShootEntity = "arcticvr_hl2rpg_proj"
SWEP.Num = 1
SWEP.Recoil = 7
SWEP.RecoilVertical = 3
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-2, -0.5, 0.75)
SWEP.Spread = 1 / 750
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "RPG_Round"

SWEP.MagType = "hl2rpgrocket"
SWEP.DefaultMagazine = "rpgrocket_hl2_1"

SWEP.CaseEffect = ""
SWEP.BulletEffect = ""

SWEP.FireSound = "weapons/rpg/rocketfire1.wav"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"
SWEP.MagOutSound = "weapons/sniper/sniper_zoomout.wav"
SWEP.MagInSound = "weapons/sniper/sniper_zoomin.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

SWEP.DisintegratingMagazine = true


-- weapon weight, from 1 to 35 (light to heavy)
if SERVER then
	hook.Add ("SWEP:Deploy", "VRdeployhook", function (ply)
		print ("bingus binted")
	net.Start( "VRModWeightMessage" )
	net.WriteString( tostring (25) )
	net.Send( ply )
	print ("bogos binted")
	end)

	function SWEP:Holster(ply)
		print ("nononono")
	net.Start( "VRModRemoveWeight" )
	net.WriteString( tostring (1) )
	net.Send( ply )
	print ("okwkoawdkodwak")
	end
end

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_rpg = {
    offsetPos = Vector(7.6, -5, -1.6), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.AlwaysShoot = true
SWEP.OpenBolt = true
SWEP.CanLockBack = true
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = false
SWEP.NonAutoloading = false
SWEP.SlideNoAutoReciprocate = true
SWEP.TwoHanded = true

SWEP.LaserSight = true

SWEP.StabilityFrames = 0
SWEP.WeaponWeight = 25

SWEP.WeightPenaltyFrames = 0

SWEP.ForegripAngle = Angle(-20, -50, 0)
SWEP.ForegripOffset = Vector(9, -5.2, -1.7)

SWEP.ForegripMins = Vector(-4, -4, -4)
SWEP.ForegripMaxs = Vector(4, 4, 4)

SWEP.MagazineInsertMins = Vector(-3, -3, -6.5)
SWEP.MagazineInsertMaxs = Vector(3, 3, 6.5)

SWEP.MagazineOffset = Vector(0, 0, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.TriggerPulledOffset = { -- the offset of the trigger bone when it is fully pulled.
    pos = Vector(0, 0.1, -0.2),
    ang = Angle(0, 0, 0)
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-40,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(-20,10,0), Angle(0,-10,0), Angle(0,-0,0),
    Angle(0,10,-10), Angle(0,-10,0), Angle(0,-20,0),
    Angle(0,10.-8,0), Angle(0,0,0), Angle(0,-30,0),
    Angle(0,10.5,4.8), Angle(0,-10,0), Angle(0,-10,0),
    Angle(0,-0,12.7), Angle(0,00,0), Angle(0,-0,0),
}

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(2,15,10), Angle(0,-20,0), Angle(0,-7.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(5,-0,15), Angle(0,-40,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
}

SWEP.BoneIndices = {
    rpg7 = 0,
    mag = 1,
    trigger = 2,
    muzzle = 3,
    foregrip = 4,
    scope = 5,
}


SWEP.Firemodes = {
    1,
}
end
if SERVER then
	SWEP.LaserDot = NULL;

	function SWEP:OnRemove()
		self:Holster()
	end

	function SWEP:Holster()
		if SERVER then
			if IsValid(self.LaserDot) then
				self.LaserDot:Remove()
				self.LaserDot = NULL;
			end
		end
		return true // Something breaks otherwise..?
	end

	function SWEP:Deploy()
		if SERVER && self:GetOwner() then
			self:Holster() // BUGFIX: sometimes called twice!
			self.LaserDot = ents.Create("env_laserdot")
			self.LaserDot:SetOwner(self:GetOwner())
			self.LaserDot:SetPos(self:GetOwner():EyePos())
			self.LaserDot:Spawn()
			self.LaserDot:Activate()
		end
		return true // Something breaks otherwise..?
	end
	function SWEP:VR_Shoot(src, ang, cycle)
		if CLIENT || !IsValid(self:GetOwner()) then return end
		cycle = cycle or true
		local missile = ents.Create("rpg_missile")
		missile:SetOwner(self:GetOwner())
		missile:SetPos(self:GetOwner():EyePos())
		missile:SetAngles(self:GetOwner():EyeAngles())
		missile:Spawn()
		missile:SetSaveValue('m_flDamage',200)
		missile:SetMoveType(MOVETYPE_FLYGRAVITY)
		missile:Activate()
		missile:SetVelocity((self:GetOwner():GetAimVector() * 300) + Vector( 0, 0, 128 )) // vanilla hl2
	
		self:GetOwner():ScreenFade(SCREENFADE.IN, Color(255,225,205,64), 0.1, 0) 
		if !self.NonAutoloading then
			self:Cycle()
		end
	end

	function SWEP:Think()
		if(self.LaserDot && IsValid(self.LaserDot)) then
			local owner = self:GetOwner()
			local trace
			if IsValid(owner) then
				trace = owner:GetEyeTrace()
			else
				local att = self:GetAttachment(self:LookupAttachment("muzzle"))
				trace = util.TraceLine({start = att.Pos, endpos = att.Pos+att.Ang:Forward()*16384, filter = self})
			end
			self.LaserDot:SetPos(trace.HitPos)
			if(IsValid(trace.Entity) && !trace.Entity:IsWorld()) then
				self.LaserDot:SetSaveValue('m_hTargetEnt', trace.Entity)
			else
				self.LaserDot:SetSaveValue('m_hTargetEnt', NULL)
			end
		end
	end
end