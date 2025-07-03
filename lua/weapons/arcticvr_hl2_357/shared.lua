AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/pistol_357.mdl"
SWEP.WorldModel = "models/weapons/w_357_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 18
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR .357 MAGNUM"
SWEP.Slot = 1
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.DamageMin = 70
SWEP.DamageMax = 70
SWEP.MaxRange = 1000
SWEP.Penetration = 3
SWEP.MuzzleVelocity = 200000
SWEP.Num = 1
SWEP.RPM = 100
SWEP.Recoil = 3
SWEP.RecoilVertical = 16
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-2, 0.3, 2)
SWEP.Spread = 1 / 750
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "357"

SWEP.MagType = "revolver"
SWEP.DefaultMagazine = "revolver_6"

SWEP.CaseEffect = ""
SWEP.BulletEffect = ""

SWEP.FireSound = "Weapon_357.Single"
SWEP.DryFireSound = "weapons/clipempty_pistol.wav"
SWEP.MagOutSound = "weapons/357/357_reload4.wav"
SWEP.MagInSound = "weapons/357/357_reload3.wav"
SWEP.OpenChamberSound = "weapons/357/357_reload1.wav"
SWEP.CloseChamberSound = "weapons/357/357_spin1.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"


if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_357 = {
    offsetPos = Vector(25.5, -3.5, -2.9), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.AlwaysShoot = true
SWEP.OpenBolt = true
SWEP.CanLockBack = true
SWEP.MagCanDropFree = true
SWEP.BoltCanAutoRelease = false
SWEP.NonAutoloading = false
SWEP.SlideNoAutoReciprocate = true
SWEP.PistolStabilize = false
SWEP.ReverseForegrip = true

SWEP.TwoHanded = true

SWEP.RecoilTwoHandMult = 0.01

SWEP.ForegripAngle = Angle(0, -10, 0)
SWEP.ForegripOffset = Vector(1, -4, -1.2)

SWEP.ForegripMins = Vector(-7, -4, -1)
SWEP.ForegripMaxs = Vector(5, 4, 6)

SWEP.BreakAction = true
SWEP.BreakActionOpenAng = Angle(0, -100, 0)
SWEP.BreakActionCloseVector = Vector(0, -3, 0)
SWEP.EjectorTapOffset = Vector(0, 0, 1)
SWEP.RevolverBoneRotAxis = Angle(0, 1, 0) -- which axis the revolver cylinder will revolve around
SWEP.VolleyFireRemoveDir = Vector(0, 0, -1)




SWEP.MagazineInsertMins = Vector(-3.3, -1.5, -3.5)
SWEP.MagazineInsertMaxs = Vector(3.3, 2, 3.5)

SWEP.MagazineOffset = Vector(-2, 1.8, 0)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)


SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-10,40,15), Angle(0,-0,0), Angle(0,-0.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-12,20,15), Angle(0,-20,0), Angle(0,-17.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-27,0), --finger 2
    Angle(0,-35.8,0), Angle(0,-40.6,0), Angle(0,-45.1,0), --finger 3
    Angle(0,-32.3,-8.2), Angle(0,-34.4,0), Angle(0,-22.5,0), --finger 4
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
    Angle(0,20,-10), Angle(0,-0,0), Angle(0,-10,0),
    Angle(0,-15.-8,0), Angle(0,-30,0), Angle(0,-10,0),
    Angle(0,-10.5,4.8), Angle(0,-30,0), Angle(0,-10,0),
    Angle(0,-5,12.7), Angle(0,-30,0), Angle(0,-10,0),
}

SWEP.BulletBones = {
    [0] = "magazine",
}

SWEP.BoneIndices = {
 pistol = 0,
 pivot = 1,
 cylinder = 2,
 magazine = 3,
 trigger = 4,
 muzzle = 5,
 foregrip = 6,
 laser = 7,
}



SWEP.Firemodes = {
    1,
}

end
