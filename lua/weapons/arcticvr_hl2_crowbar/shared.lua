AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/melee_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ""

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 50
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR CROWBAR (LEGACY)"
SWEP.Slot = 0
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.MeleeAttack = true -- whether this weapon can melee attack
SWEP.MeleeVelThreshold = 2 -- how fast you have to swing
SWEP.MeleeDelay = 0.1
SWEP.MeleeDamage = 35
SWEP.MeleeDamageType = DMG_CLUB

SWEP.MeleeHitSound = "Weapon_Crowbar.Melee_Hit"
SWEP.MeleeStrikeSound = "Weapon_Crowbar.Melee_Hit"

SWEP.NotAGun = true

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_crowbar = {
    offsetPos = Vector(3.35, 1.5, 2.5), --forward, left, up
    offsetAng = Angle(0, -90, 0),
}

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

SWEP.BoneIndices = {
    blender_implicit = 0,
    knife = 1,
    bladeend = 2,
    bladestart = 3,
}

SWEP.Firemodes = {
    1,
    0
}

SWEP.Firemode = 1

end
