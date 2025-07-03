AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/lmg_ar3.mdl"
SWEP.WorldModel = "models/weapons/w_bunkergun_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 300
SWEP.Primary.DefaultClip = 600
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "ar2"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR PULSE-LMG"
SWEP.Slot = 2
SWEP.SlotPos = 3
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.Chambered = 0
SWEP.LoadedRounds = 0
SWEP.Magazine = nil

SWEP.DamageMin = 12
SWEP.DamageMax = 23
SWEP.MaxRange = 500
SWEP.Penetration = 0
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 102)
SWEP.TracerWidth = 20
SWEP.RPM = 900
SWEP.Recoil = 2
SWEP.RecoilVertical = 1
SWEP.RecoilSide = 0.5
SWEP.RecoilBalance = Vector(-1, 0, 1)
SWEP.Spread = 12 / 125
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "ar2"
SWEP.TracerOverride = "AR2Tracer"

SWEP.MagType = "ar3"
SWEP.DefaultMagazine = "ar3_300"

SWEP.MuzzleEffectScale = 2
SWEP.MuzzleEffect = "GunshipMuzzleFlash"
SWEP.CaseEffect = ""
SWEP.BulletEffect = ""

SWEP.NextPrimaryFire = 0

SWEP.FireSound = "weapons/arcticvr/ar1_dist1.wav"
SWEP.DryFireSound = "weapons/ar2/ar2_empty.wav"
SWEP.SwitchModeSound = "weapons/smg1/switch_single.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/arcticvr/shotgun_slideback.wav"
SWEP.SlideReleaseSound = "weapons/arcticvr/shotgun_slideforward.wav"
SWEP.SlideForwardSound = "weapons/arcticvr/mp5_boltforward.wav"
SWEP.MagInSound = "weapons/arcticvr/ar2_maginsert.wav"
SWEP.MagOutSound = "weapons/arcticvr/ar2_magout.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

SWEP.OpenBolt = true

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_ar3 = {
    offsetPos = Vector(10, -10, -3), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.Firemode = 2

SWEP.CanLockBack = true
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = false
SWEP.TwoHanded = true
SWEP.TwoStageTrigger = false

SWEP.ReverseForegrip = true

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-5,-20.1), Angle(0,0,0), Angle(0,0,0), --finger 0
    Angle(3,-33,0), Angle(0,-50,0), Angle(0,-47.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-23.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-25.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-25.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-5,-20.1), Angle(0,0,0), Angle(0,0,0), --finger 0
    Angle(3,-33,0), Angle(0,-50,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-23.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-25.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-25.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-40,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(-05,15,-40.1), Angle(0,0,0), Angle(0,20,0), --finger 0
    Angle(3,-33,0), Angle(0,-50,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-23.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-25.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-25.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
}


SWEP.RTScope = false -- weapon has an RT scope
SWEP.RTScopeSubmatIndex = 3 -- what is the submaterial index of the scope material?
SWEP.RTScopeFOV = 5 -- what is the field of view of the scope?
SWEP.RTScopeRes = 256
SWEP.RTScopeSurface = Material("effects/avr_rt")
SWEP.RTScopeOffset = Vector(0, 0, 0)
SWEP.RTScopeReticle = Material("holosights/ar2.png")

SWEP.ForegripAngle = Angle(0, -0, -0)
SWEP.ForegripOffset = Vector(-2.7, -10, -0.7)

SWEP.ForegripMins = Vector(-4, -6, -3)
SWEP.ForegripMaxs = Vector(4, 6, 4)

SWEP.SlideMins = Vector(-3, -4, -3)
SWEP.SlideMaxs = Vector(3, 4, 3)

SWEP.MagazineInsertMins = Vector(-2, -4, -3)
SWEP.MagazineInsertMaxs = Vector(2, 4, 3)

SWEP.MagazineOffset = Vector(0, 0, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(0, 0, -1)

SWEP.Firemode = 2 -- 0 = safe, 1 = semi, 2 = auto, negative = burst

SWEP.SlideLockbackAmount = 2.5
SWEP.SlideBlowbackAmount = 2.7

SWEP.BoneIndices = {
 ar2 = 0,
 magazine = 1,
 trigger = 2,
 slide = 3,
 selector = 4,
 bullet = 5,
 scope = 6,
 foregrip = 7,
 muzzle = 8,
 root = 9,
}


SWEP.Firemodes = {
    2,
}

end