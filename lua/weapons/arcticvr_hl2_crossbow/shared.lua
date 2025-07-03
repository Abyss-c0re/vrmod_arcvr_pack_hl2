AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/crossbow_hl2.mdl"
SWEP.WorldModel = "models/weapons/w_crossbow_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 11
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "XBowBolt"

SWEP.Secondary.ClipSize = 1
SWEP.Secondary.DefaultClip = 3
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR CROSSBOW"
SWEP.Slot = 3
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.DamageMin = 250
SWEP.DamageMax = 250
SWEP.MaxRange = 100000
SWEP.Penetration = 1
SWEP.MuzzleVelocity = 15000
SWEP.TracerCol = Color(255, 128, 0)
SWEP.TracerWidth = 15
SWEP.RPM = 200
SWEP.Firemode = 1
SWEP.Recoil = 1.5
SWEP.RecoilVertical = 1
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-1, 0, 1)
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "xbowbolt"

SWEP.MagType = "xbowbolt"
SWEP.DefaultMagazine = "xbowbolt_hl2_1"

SWEP.DisableMuzzleEffect = false
SWEP.MuzzleEffect = "CrossbowLoad"
SWEP.CaseEffect = ""
SWEP.BulletEffect = ""

SWEP.FireSound = "weapons/arcticvr/crossbowfire.wav"
SWEP.DryFireSound = ""
SWEP.SwitchModeSound = "weapons/ar2/ar2_empty.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/crossbow/reload1.wav"
SWEP.SlideReleaseSound = ""
SWEP.SlideForwardSound = ""
SWEP.MagInSound = "Weapon_Crossbow.BoltElectrify"
SWEP.MagOutSound = ""
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_crossbow = {
    offsetPos = Vector(12, -4, -2), --forward, left, up
    offsetAng = Angle(0, -0, 0),
}

SWEP.TriggerPulledOffset = { -- the offset of the trigger bone when it is fully pulled.
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 25)
}

SWEP.NonReciprocatingChargingHandle = true
SWEP.CanLockBack = true
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = true
SWEP.TwoStageTrigger = true
SWEP.CHandleRaise = true
SWEP.HKSlap = true
SWEP.ShootStraightFromMag = true
SWEP.DisintegratingMagazine = true

SWEP.TwoHanded = true

SWEP.ForegripAngle = Angle(0, -60, -90)
SWEP.ForegripOffset = Vector(13, -3.9, -1)

SWEP.ForegripMins = Vector(-3, -4, -5)
SWEP.ForegripMaxs = Vector(3, 2, 5)

SWEP.SlideMins = Vector(-4, -2, -6)
SWEP.SlideMaxs = Vector(3, 2, 3)

SWEP.MagazineInsertMins = Vector(-2, -1, -7)
SWEP.MagazineInsertMaxs = Vector(2, 2, 7)

SWEP.MagazineOffset = Vector(0, 0, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(1.6, 0, 0)
SWEP.CHandleRaiseDir = Vector(0, 0, 0)

SWEP.CHandleRaiseAmount = 0.00000000000001
SWEP.CHandleRaisedOffset = {
    pos = Vector(0.5, 0, -0),
    ang = Angle(0, 0, 0)
}

SWEP.SlideLockbackAmount = 8
SWEP.SlideBlowbackAmount = 10
SWEP.ChargingHandlePullAmount = -1.75

SWEP.BoneIndices = {
 m4a1 = 0,
 magazine = 1,
 trigger = 2,
 chandle = 3,
 selector = 4,
 muzzle = 5,
 eject = 6,
 slidelock = 7,
 slide = 8,
 bullet = 9,
 foregrip = 10,
 scope = 11,
}


SWEP.RTScope = true -- weapon has an RT scope
SWEP.RTScopeSubmatIndex = 2 -- what is the submaterial index of the scope material?
SWEP.RTScopeFOV = 2 -- what is the field of view of the scope?
SWEP.RTScopeRes = 1080
SWEP.RTScopeSurface = Material("effects/avr_rt")
SWEP.RTScopeOffset = Vector(0, 0, 0)
SWEP.RTScopeReticle = Material("scope/xbow_scope.png")

SWEP.StabilityFrames = 10

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-2,35,10), Angle(0,5,0), Angle(0,-7.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(10,10,15), Angle(0,-60,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-20,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(0,-0,0), Angle(20,-0,20), Angle(0,-10,0),
    Angle(0,0,-10), Angle(0,-20,0), Angle(0,-25,0),
    Angle(0,-10,-5), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,-10,4.8), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,-10,15.7), Angle(0,-30,0), Angle(0,0,0),
}


SWEP.SlidelockActivePose = {
    pos = Vector(0.1, 0, 0),
    ang = Angle(0, 0, 0)
}

SWEP.FireSelectPoses = {
    [0] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 179)}
    },
    [1] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 90)}
    },
    [2] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 0)}
    },
}

SWEP.Firemodes = {
    1,
}

end

if SERVER then
	local sk_plr_dmg_crossbow = GetConVar("sk_plr_dmg_crossbow")
	function SWEP:VR_Shoot(src, ang, cycle)
		if CLIENT then return end
		cycle = cycle or true

		local bolt = ents.Create("crossbow_bolt")
		bolt:SetOwner(self.Owner)
		bolt:SetPos(src)
		bolt:SetAngles(ang)
		bolt:Spawn()
		bolt:Activate()
		bolt:SetVelocity(ang:Forward() * 3000)
		bolt:Fire("SetDamage", sk_plr_dmg_crossbow:GetFloat() )

		if !self.NonAutoloading then
			self:Cycle()
		end
	end
end
if CLIENT then
	local old_mag = 0
	function SWEP:Think()
		if(ArcticVR && ArcticVR.CSMagazine && IsValid(ArcticVR.CSMagazine)) then
				ArcticVR.CSMagazine:SetSkin(self.LoadedRounds != 0 and 1 or 0)
		end
		if(self.LoadedRounds != old_mag) then
			old_mag = self.LoadedRounds;
			if(g_VR && g_VR.viewModel && IsValid(g_VR.viewModel)) then
				g_VR.viewModel:SetSkin(self.LoadedRounds != 0 and 1 or 0)
			end
		end
	end
end
