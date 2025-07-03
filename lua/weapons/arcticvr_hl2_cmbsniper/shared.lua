AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/rifle_cmbsniper.mdl"
SWEP.WorldModel = "models/weapons/w_combine_sniper.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 90
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "ar2"

SWEP.Secondary.ClipSize = 1
SWEP.Secondary.DefaultClip = 3
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR COMBINE SNIPER"
SWEP.Slot = 2
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.DamageMin = 99
SWEP.DamageMax = 180
--SWEP.DamageMin = 19
--SWEP.DamageMax = 24
SWEP.MaxRange = 10000
SWEP.Penetration = 0
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 102)
SWEP.TracerWidth = 20
SWEP.RPM = 50
SWEP.Firemode = 1
SWEP.Recoil = 6
SWEP.RecoilVertical = 0
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-1, 0.05, 1)
SWEP.Spread = 1 / 20000
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "ar2"
SWEP.TracerOverride = "AR2Tracer"

SWEP.MagType = "heavypellet"
SWEP.DefaultMagazine = "sniperpellet_hl2_10"

SWEP.MuzzleEffectScale = 0.1
SWEP.MuzzleEffect = "ChopperMuzzleFlash"
SWEP.CaseEffect = ""
SWEP.BulletEffect = ""

SWEP.FireSound = "weapons/arcticvr/cmbsniper.wav"
SWEP.DryFireSound = "weapons/ar2/ar2_empty.wav"
SWEP.SwitchModeSound = "weapons/ar2/ar2_empty.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/ar2/ar2_reload_rotate.wav"
SWEP.SlideReleaseSound = "weapons/ar2/ar2_reload_push.wav"
SWEP.SlideForwardSound = "weapons/ar2/ar2_reload_push.wav"
SWEP.MagInSound = "weapons/ar2/ar2_reload_push.wav"
SWEP.MagOutSound = "weapons/arcticvr/ar2_magout.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

SWEP.InternalMagazine = true
SWEP.InternalMagazineCapacity = 4

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_cmbsniper = {
    offsetPos = Vector(12.1, -4, 2.6), --forward, left, up (gun orientation)
    offsetAng = Angle(0, -0, 0),
}

SWEP.TriggerPulledOffset = { -- the offset of the trigger bone when it is fully pulled.
    pos = Vector(-0.6, 0, -0), -- forward, up, right
    ang = Angle(0, 0, 0)
}

SWEP.NonReciprocatingChargingHandle = true
SWEP.CanLockBack = false
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = true
SWEP.TwoStageTrigger = true
SWEP.CHandleRaise = true
SWEP.HKSlap = true
SWEP.CanDirectChamber = false
SWEP.MustBeOpenToLoad = false
SWEP.ShootStraightFromMag = true

SWEP.TwoHanded = true

SWEP.ForegripAngle = Angle(0, -60, -90)
SWEP.ForegripOffset = Vector(12.5, -4.4, 1.3)

SWEP.ForegripMins = Vector(-5, -5, -4)
SWEP.ForegripMaxs = Vector(5, 4, 4)

SWEP.SlideMins = Vector(-4, -2, -6)
SWEP.SlideMaxs = Vector(3, 2, 3)

SWEP.MagazineInsertMins = Vector(-2, -1.4, -2)
SWEP.MagazineInsertMaxs = Vector(4, 3, 3)

SWEP.MagazineOffset = Vector(0, 0, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(1.6, 0, 0)
SWEP.CHandleRaiseDir = Vector(0, 0, 0)

SWEP.CHandleRaiseAmount = 0.00000000000001
SWEP.CHandleRaisedOffset = {
    pos = Vector(0.5, 0, -0),
    ang = Angle(0, 0, 0)
}


SWEP.SlideLockbackAmount = 3.3
SWEP.SlideBlowbackAmount = 3.301
SWEP.ChargingHandlePullAmount = -1.75

SWEP.BoneIndices = {
    m4a1 = 0,
    mag = 1,
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


SWEP.LoadedBulletBone = "bullet"

SWEP.RTScope = true -- weapon has an RT scope
SWEP.RTScopeSubmatIndex = 2 -- what is the submaterial index of the scope material?
SWEP.RTScopeFOV = 2 -- what is the field of view of the scope?
SWEP.RTScopeRes = 1080
SWEP.RTScopeSurface = Material("effects/avr_rt")
SWEP.RTScopeOffset = Vector(0, 0, 0)
SWEP.RTScopeReticle = Material("scope/cmbsniper.png")

SWEP.StabilityFrames = 10

SWEP.LaserSight = true
SWEP.LaserSightColor = Color(0, 200, 255)
SWEP.LaserStrength = 2



SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-5,40,10), Angle(0,5,0), Angle(0,-7.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(9,15,17), Angle(0,-25,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
}


SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-2,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(0,10,0), Angle(20,-10,20), Angle(0,-10,0),
    Angle(0,20,-10), Angle(0,-20,0), Angle(0,-25,0),
    Angle(0,10,-5), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,10,4.8), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,10,15.7), Angle(0,-30,0), Angle(0,10,0),
}


SWEP.SlidelockActivePose = {
    pos = Vector(0.1, 0, 0),
    ang = Angle(0, 0, 0)
}

SWEP.FireSelectPoses = {
    [0] = {
        selector = {pos = Vector(-5, 0, 0), ang = Angle(0, 0, 0)}
    },
    [1] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 0)}
    }
}

SWEP.Firemodes = {
    1,
    0,
}

end