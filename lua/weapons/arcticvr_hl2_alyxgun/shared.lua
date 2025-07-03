AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/alyxgun_arcvr.mdl"
SWEP.WorldModel = "models/weapons/w_alyx_gun.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 168
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR ALYXGUN"
SWEP.Slot = 1
SWEP.SlotPos = 3
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.Chambered = 0
SWEP.LoadedRounds = 0
SWEP.Magazine = nil

SWEP.DamageMin = 14
SWEP.DamageMax = 16
--SWEP.DamageMin = 10
--SWEP.DamageMax = 12
SWEP.MaxRange = 1000
SWEP.Penetration = 1
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 255)
SWEP.TracerWidth = 10
SWEP.RPM = 600
SWEP.Firemode = 3
SWEP.Recoil = 3
SWEP.RecoilVertical = 2
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-2, -0.1, 1.2)
SWEP.Spread = 1 / 125
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "pistol"

-- old values
-- SWEP.Recoil = 3
-- SWEP.RecoilVertical = 1.5
-- SWEP.RecoilSide = 0
-- SWEP.RecoilBalance = Vector(-1, 0, 1.2)
-- SWEP.Spread = 1 / 125
-- SWEP.MeanShotsBetweenJams = 0
-- SWEP.AmmoType = "pistol"

-- almost vanilla
-- SWEP.Recoil = 3
-- SWEP.RecoilVertical = 6
-- SWEP.RecoilSide = 0
-- SWEP.RecoilBalance = Vector(-2, -0.2, 1.2)
-- SWEP.Spread = 1 / 75
-- SWEP.MeanShotsBetweenJams = 0
-- SWEP.AmmoType = "pistol"

SWEP.MagType = "alyxgunhl2"
SWEP.DefaultMagazine = "alyxgunhl2_30"

SWEP.MuzzleEffect = "MuzzleEffect"
SWEP.CaseEffect = "arcticvr_case_hl2_9_alyx"
SWEP.BulletEffect = "arcticvr_bullet_hl2_9"

SWEP.NextPrimaryFire = 0

SWEP.FireSound = "weapons/arcticvr/alyx_gun_fire3.wav"
SWEP.DryFireSound = "weapons/arcticvr/alyxgun_empty.wav"
SWEP.SwitchModeSound = "weapons/smg1/switch_single.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/arcticvr/alyxgun_slideback.wav"
SWEP.SlideForwardSound = "weapons/arcticvr/alyxgun_slideforwardwav.wav"
SWEP.SlideReleaseSound = "weapons/arcticvr/alyxgun_sliderelease.wav"
SWEP.MagInSound = "weapons/arcticvr/alyxgun_magin.wav"
SWEP.MagOutSound = "weapons/arcticvr/alyxgun_magoutt.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_alyxgun = {
    offsetPos = Vector(25.5, -3.5, -2.7), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.TriggerPulledOffset = { -- the offset of the trigger bone when it is fully pulled.
    pos = Vector(0, 0, -0),
    ang = Angle(0, 0, 20)
}

SWEP.CanLockBack = true
SWEP.MagCanDropFree = true
SWEP.BoltCanAutoRelease = true
SWEP.PistolStabilize = false	
SWEP.ReverseForegrip = true
SWEP.NonReciprocatingChargingHandle = true

SWEP.TwoHanded = true

SWEP.RecoilTwoHandMult = 0.01

SWEP.ForegripAngle = Angle(0, -10, 0)
SWEP.ForegripOffset = Vector(1, -4, -1)

SWEP.ForegripMins = Vector(-7, -4, -2)
SWEP.ForegripMaxs = Vector(5, 4, 6)

SWEP.SlideMins = Vector(-3, -0.6, -3.2)
SWEP.SlideMaxs = Vector(3, 4, 7)

SWEP.MagazineInsertMins = Vector(-3, -2.5, -4)  --left, down, back
SWEP.MagazineInsertMaxs = Vector(3, 1, 4)

SWEP.MagazineOffset = Vector(0, 0, -4)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(0, 0, -1)

SWEP.FullBackOffset = {
    bullet = {
        pos = Vector(-2.4, -0, -0),
        ang = Angle(0, 0, 0)
    }
}

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-7,-5), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-10,35,10), Angle(0,5,0), Angle(0,-7.9,0), --finger 1   This is the index finger, off the trigger
    Angle(-14,-23.6,0), Angle(0,-40,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-25,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-15,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-5), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(6,5,17), Angle(0,-25,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
    Angle(-14,-23.6,0), Angle(0,-40,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-25,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-15,0), Angle(0,-22.5,0), --finger 4
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-40,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(-0,20,0), Angle(0,0,0), Angle(0,30,0),
    Angle(8.5,-13,-10), Angle(0,-30,0), Angle(0,-20,0),
    Angle(0,-15.-8,0), Angle(0,-30,0), Angle(0,-10,0),
    Angle(0,-10.5,4.8), Angle(0,-30,0), Angle(0,-10,0),
    Angle(0,-5,12.7), Angle(0,-30,0), Angle(0,-10,0),
}

SWEP.BurstLength = 0
SWEP.SlideGrabbed = false
SWEP.SlideReleasing = false
SWEP.SlidePos = 0
SWEP.SlideLockedBack = false
SWEP.NeedAnotherTriggerPull = false
SWEP.OpenBolt = false
SWEP.LastSlidePos = 0
SWEP.Firemode = 3 -- 0 = safe, 1 = semi, 2 = auto, negative = burst
SWEP.RecoilAngles = Angle(0, 0, 0)
SWEP.RecoilBlowback = 0

SWEP.SlideLockbackAmount = 2.2
SWEP.SlideBlowbackAmount = 2.4

SWEP.BulletBones = {
    [1] = "bullet"
}

SWEP.BoneIndices = {
 pistol = 0,
 magazine = 1,
 trigger = 2,
 chandle = 3,
 bullet = 4,
 selector = 5,
 muzzle = 6,
 eject = 7,
 slide = 8,
 foregrip = 9,
 hammer = 10,
}



SWEP.MiscLerps = {
}

SWEP.TargetMiscLerps = {
}

SWEP.SlidelockActivePose = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 5)
}

SWEP.FireSelectPoses = {
    [1] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 179)}
    },
    [-3] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 90)}
    },
    [2] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 0)}
    },
}

SWEP.Firemodes = {
    1,
    -3,
    2
}

end
