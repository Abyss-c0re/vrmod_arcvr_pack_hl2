AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/shotgun_hl2.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 42
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "buckshot"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR SHOTGUN"
SWEP.Slot = 3
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.DamageMin = 27
SWEP.DamageMax = 27
--SWEP.DamageMin = 13.5
--SWEP.DamageMax = 13.5
SWEP.MaxRange = 2250
SWEP.Penetration = 0
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 255)
SWEP.TracerWidth = 10
SWEP.Num = 7
SWEP.RPM = 500
SWEP.Recoil = 8
SWEP.RecoilVertical = 2
SWEP.RecoilSide = 0.5
SWEP.RecoilBalance = Vector(-1.5, 0, 0.75)
SWEP.Spread = 1 / 4
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "buckshot"

SWEP.MagType = "12g"
SWEP.DefaultMagazine = "12gshell_hl2_1"

SWEP.MuzzleEffect = "MuzzleEffect"
SWEP.CaseEffect = "arcticvr_shellspent_hl2_12"
SWEP.BulletEffect = "arcticvr_shell_hl2_12"

SWEP.FireSound = "Weapon_Shotgun.Single"
SWEP.DryFireSound = "weapons/shotgun/shotgun_empty.wav"
SWEP.SwitchModeSound = "weapons/ar2/ar2_empty.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/arcticvr/shotgun_slideback.wav"
SWEP.SlideForwardSound = "weapons/arcticvr/shotgun_slideforward.wav"
SWEP.MagInSound = "Weapon_Shotgun.Reload"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

SWEP.InternalMagazine = true
SWEP.InternalMagazineCapacity = 6
SWEP.NonAutoloading = true


if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_shotgun = {
    offsetPos = Vector(18, -3, 2.2), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.CanLockBack = false
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = false
SWEP.PumpAction = true
SWEP.CanDirectChamber = true
SWEP.SlideNoAutoReciprocate = true
SWEP.PumpSlideOffset = 0

SWEP.TwoHanded = true

SWEP.ForegripAngle = Angle(0, -60, -90)
SWEP.ForegripOffset = Vector(18, -4, 1)

SWEP.ForegripMins = Vector(-4, -4, -4)
SWEP.ForegripMaxs = Vector(8, 4, 4)

SWEP.SlideMins = Vector(-3, -2, -3)
SWEP.SlideMaxs = Vector(2, 2, 3)

SWEP.MagazineInsertMins = Vector(-2, -2, -3)
SWEP.MagazineInsertMaxs = Vector(2, 0, 3)

SWEP.MagazineOffset = Vector(0, 0, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(-0, -0, -1)

SWEP.SlideBlowbackAmount = 3.5

SWEP.DefaultBodygroups = "00001"


SWEP.FullBackOffset = {
    port = {
        pos = Vector(0, -0, 0),
        ang = Angle(0, 0, -20)
    }
}


SWEP.RecoilTwoHandMult = 1

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-2,35,10), Angle(0,5,0), Angle(0,-7.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(10,20,15), Angle(0,-40,0), Angle(0,-47.9,0), --finger 1   This is the index finger, on the trigger
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
    Angle(0,10,-10), Angle(0,-20,0), Angle(0,-25,0),
    Angle(0,0,-5), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,0,4.8), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,-0,15.7), Angle(0,-30,0), Angle(0,10,0),
}

SWEP.BulletBones = {
    [1] = "bullet",
}

SWEP.CaseBones = {
    [1] = "case"
}

SWEP.LoadedBulletBone = "bullet2"

SWEP.BoneIndices = {
    mag = 1,
    trigger = 2,
    selector = 3,
    chamber = 5,
    slide = 6,
    case = 7,
    foregrip = 8,
    bullet = 9,
    bullet2 = 10,
    port = 11,
}


SWEP.Firemodes = {
    1
}

end