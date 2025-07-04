AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false
SWEP.Base = "arcticvr_base"
SWEP.ViewModel = "models/weapons/w_stunbaton.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
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

SWEP.PrintName = "VR STUNSTICK"
SWEP.Slot = 0
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.MeleeAttack = true
SWEP.MeleeVelThreshold = 2
SWEP.MeleeDelay = 0.1
SWEP.MeleeDamage = 40
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeHitSound = "Weapon_StunStick.Melee_Hit"
SWEP.MeleeStrikeSound = "Weapon_StunStick.Activate"
SWEP.NotAGun = true

if CLIENT then
    g_VR.viewModelInfo = g_VR.viewModelInfo or {}
    g_VR.viewModelInfo.arcticvr_hl2_stunstick = {
        offsetPos = Vector(0, 0, -3), -- forward, left, up
        offsetAng = Angle(90, 0, 0), -- pitch, yaw, roll (upright grip)
    }

    SWEP.FingerAngles = {
        -- Right hand open angles
        Angle(-25, -5, -20.1),
        Angle(0, 0, 0),
        Angle(0, 0, 0),
        Angle(3, -33, 0),
        Angle(0, -50, 0),
        Angle(0, -47.9, 0),
        Angle(0, -23.6, 0),
        Angle(0, -60, 0),
        Angle(0, -27, 0),
        Angle(0, -25.8, 0),
        Angle(0, -40.6, 0),
        Angle(0, -45.1, 0),
        Angle(0, -25.3, -8.2),
        Angle(0, -34.4, 0),
        Angle(0, -22.5, 0),

        -- Right hand closed angles
        Angle(-25, -5, -20.1),
        Angle(0, 0, 0),
        Angle(0, 0, 0),
        Angle(3, -33, 0),
        Angle(0, -50, 0),
        Angle(0, -47.9, 0),
        Angle(0, -23.6, 0),
        Angle(0, -60, 0),
        Angle(0, -27, 0),
        Angle(0, -25.8, 0),
        Angle(0, -40.6, 0),
        Angle(0, -45.1, 0),
        Angle(0, -25.3, -8.2),
        Angle(0, -34.4, 0),
        Angle(0, -22.5, 0),
    }

    SWEP.BoneIndices = {
        blender_implicit = 0,
        knife = 1,
        bladeend = 2,
        bladestart = 3,
    }

    SWEP.Firemodes = {1, 0}
    SWEP.Firemode = 1
end
