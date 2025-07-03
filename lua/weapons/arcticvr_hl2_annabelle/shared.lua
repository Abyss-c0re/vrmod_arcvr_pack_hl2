AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/annabelle_hl2.mdl"
SWEP.WorldModel = "models/weapons/w_annabelle.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 12
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "buckshot"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR ANNABELLE"
SWEP.Slot = 3
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.DamageMin = 16
SWEP.DamageMax = 16
SWEP.MaxRange = 2250
SWEP.Penetration = 0
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 255)
SWEP.TracerWidth = 10
SWEP.Num = 7
SWEP.RPM = 500
SWEP.Recoil = 4
SWEP.RecoilVertical = 2
SWEP.RecoilSide = 0.5
SWEP.RecoilBalance = Vector(-1.5, 0, 0.75)
SWEP.Spread = 1 / 50
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "buckshot"

SWEP.MagType = "12g"
SWEP.DefaultMagazine = "12gshell_hl2_1"

SWEP.MuzzleEffect = "MuzzleEffect"
SWEP.CaseEffect = "arcticvr_shellspent_hl2_12_annabelle"
SWEP.BulletEffect = "arcticvr_shell_hl2_12"

SWEP.FireSound = "weapons/shotgun/shotgun_fire6.wav"
SWEP.DryFireSound = "weapons/shotgun/shotgun_empty.wav"
SWEP.SwitchModeSound = "weapons/ar2/ar2_empty.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/arcticvr/shotgun_slideback.wav"
SWEP.SlideForwardSound = "weapons/arcticvr/shotgun_slideforward.wav"
SWEP.MagInSound = "Weapon_Shotgun.Reload"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

SWEP.InternalMagazine = true
SWEP.InternalMagazineCapacity = 4
SWEP.NonAutoloading = true


if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_annabelle = {
    offsetPos = Vector(16, -3, 12), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.CanLockBack = false
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = false
SWEP.PumpAction = true
SWEP.CanDirectChamber = true
SWEP.SlideNoAutoReciprocate = true
SWEP.PumpSlideOffset = -2
SWEP.MustBeOpenToLoad = false

SWEP.TwoHanded = true

SWEP.ForegripAngle = Angle(0, -60, -70)
SWEP.ForegripOffset = Vector(14, -4.5, 5.8)

SWEP.ForegripMins = Vector(-4, -4, -4)
SWEP.ForegripMaxs = Vector(8, 4, 4)

SWEP.SlideMins = Vector(-3, -2, -3)
SWEP.SlideMaxs = Vector(2, 2, 3)

SWEP.MagazineInsertMins = Vector(-2, -2, -3)
SWEP.MagazineInsertMaxs = Vector(2, 2, 3)

SWEP.MagazineOffset = Vector(0, 0, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(-0, -0, -1)

SWEP.SlideBlowbackAmount = 1

SWEP.DefaultBodygroups = "00001"





SWEP.RecoilTwoHandMult = 1

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-5), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(-20,60,0), Angle(-10,-50,0), Angle(-10,-40,0), --finger 2
    Angle(-20,40,0), Angle(0,-50,0), Angle(0,-20,0), --finger 3
    Angle(-20,40,0), Angle(-10,-50,0), Angle(-20,0,0),
    --right hand closed angles
    Angle(-25,-6.9,-5), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(10,20,17), Angle(0,-30,0), Angle(0,-40.9,0), --finger 1   This is the index finger, on the trigger
    Angle(-10,-0.6,0), Angle(0,-60,0), Angle(0,-37,0), --finger 2
    Angle(-0,-30.8,0), Angle(0,-30,0), Angle(0, -30.1,0), --finger 3
    Angle(5,-40.3,-8.2), Angle(0,-20,0), Angle(0,-10.5,0), --finger 4
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-20,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(5,-0,0), Angle(0,-0,20), Angle(0,-20,0),
    Angle(0,10,-10), Angle(0,-30,0), Angle(0,-35,0),
    Angle(0,0,-5), Angle(0,-40,0), Angle(0,-20,0),
    Angle(0,0,4.8), Angle(0,-40,0), Angle(0,-20,0),
    Angle(0,-0,15.7), Angle(0,-40,0), Angle(0,00,0),
}

SWEP.BulletBones = {
    [1] = "bullet",
}

SWEP.CaseBones = {
    [1] = "case"
}

SWEP.LoadedBulletBone = "bullet2"

SWEP.FullBackOffset = {
    port = {
        pos = Vector(0, -0, -1),
        ang = Angle(0, 0, -30)
    }
}


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