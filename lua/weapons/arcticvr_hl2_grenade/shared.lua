AddCSLuaFile()

SWEP.Spawnable = false
SWEP.Category = "Half-Life 2 VR" -- edit this if you like
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.ViewModel = "models/weapons/arcticvr/nade_hl2.mdl" -- I mean, you probably have to edit these too
SWEP.WorldModel = "models/weapons/w_grenade.mdl"

SWEP.ArcticVR = false -- always keep this true
SWEP.ArcticVRNade = true -- always keep this true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 10 -- edit this part just to tell other stuff about the gun. ArcVR doesn't use this data.
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "grenade"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

-- auto switch crap. Edit if you like.
SWEP.Base = "arcticvr_base_nade"
SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR GRENADE" -- you should probably change this
SWEP.Slot = 4 -- you could edit these if you like
SWEP.SlotPos = 1

SWEP.DrawAmmo = false -- irrelevant
SWEP.DrawCrosshair = false

SWEP.ViewModelFOV = 90 -- ALWAYS set to 90

SWEP.ShootEntity = "npc_grenade_frag" -- set to thrown grenade entity
SWEP.PinModel = "models/weapons/arcticvr/nade_hl2_pin.mdl" -- set to released pin
SWEP.SpoonModel = "models/weapons/arcticvr/nade_hl2_spoon.mdl" -- set to released spoon

SWEP.ThrowSpeedMult = 100

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_grenade = {
    offsetPos = Vector(4.6, 2.1, 0), --forward, left, up
    offsetAng = Angle(0, -130, 0),
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-40,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(30,0,0), Angle(0,0,0), Angle(0,30,0),
    Angle(0,-10,-10), Angle(0,-40,0), Angle(0,-30,0),
    Angle(0,-35.-8,0), Angle(0,-80,0), Angle(0,-70,0),
    Angle(0,-26.5,4.8), Angle(0,-70,0), Angle(0,-70,0),
    Angle(0,-30,12.7), Angle(0,-70,0), Angle(0,-70,0),
}


SWEP.FingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-40,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,40,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(-10,0,0), Angle(0,-40,0), Angle(0,-0,0),
    Angle(0,30,0), Angle(0,-20,0), Angle(0,-20,0), --finger 1
    Angle(0,30,0), Angle(0,-25,0), Angle(0,-20,0), --finger 2
    Angle(0,30,0), Angle(0,-10,0), Angle(0,-10,0), --finger 3
    Angle(0,40,0), Angle(0,-0,0), Angle(0,-0,0),
}


SWEP.BoneIndices = {
    blender_implicit = 0,
    root = 1,
    pin = 2,
}

function SWEP:VR_PreThrow(_, __, ___, ____, rocket)
    rocket:Input("SetTimer", self:GetOwner(), self, 3)
end