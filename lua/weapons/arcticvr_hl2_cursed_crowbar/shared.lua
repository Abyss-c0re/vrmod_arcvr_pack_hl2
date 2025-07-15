AddCSLuaFile()
SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = true
SWEP.UseHands = false
SWEP.ViewModel = "models/weapons/arcticvr/melee_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
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
SWEP.PrintName = "VR CURSED CROWBAR"
SWEP.Slot = 0
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.MeleeHitSound = "Weapon_Crowbar.Melee_Hit"
SWEP.MeleeStrikeSound = "Weapon_Crowbar.Melee_Hit"
SWEP.NotAGun = true
if CLIENT then
    g_VR.viewModelInfo = g_VR.viewModelInfo or {}
    g_VR.viewModelInfo.arcticvr_hl2_cursed_crowbar = {
        offsetPos = Vector(3.35, 1.5, 2.5), -- forward, left, up
        offsetAng = Angle(0, -90, 0),
        noLaser = true
    }

    SWEP.FingerAngles = {
        -- right hand open angles
        Angle(-25, -5, -20.1), -- finger 0
        Angle(0, 0, 0),
        Angle(0, 0, 0),
        Angle(3, -33, 0), -- finger 1 (index finger, off trigger)
        Angle(0, -50, 0),
        Angle(0, -47.9, 0),
        Angle(0, -23.6, 0), -- finger 2
        Angle(0, -60, 0),
        Angle(0, -27, 0),
        Angle(0, -25.8, 0), -- finger 3
        Angle(0, -40.6, 0),
        Angle(0, -45.1, 0),
        Angle(0, -25.3, -8.2), -- finger 4
        Angle(0, -34.4, 0),
        Angle(0, -22.5, 0),
        -- right hand closed angles
        Angle(-25, -5, -20.1), -- finger 0
        Angle(0, 0, 0),
        Angle(0, 0, 0),
        Angle(3, -33, 0), -- finger 1 (index finger, on trigger)
        Angle(0, -50, 0),
        Angle(0, -47.9, 0),
        Angle(0, -23.6, 0), -- finger 2
        Angle(0, -60, 0),
        Angle(0, -27, 0),
        Angle(0, -25.8, 0), -- finger 3
        Angle(0, -40.6, 0),
        Angle(0, -45.1, 0),
        Angle(0, -25.3, -8.2), -- finger 4
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

-- Initialize the weapon and add VRMod hooks
function SWEP:Initialize()
    if SERVER then
        hook.Add("VRMod_MeleeHit", "ArcticVR_CursedCrowbar_Hit_" .. tostring(self:EntIndex()), function(hitData, callback)
            local ply = hitData.Attacker
            if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon() == self then
                callback(nil, "Impact.Metal", -- Custom decal for crowbar
                    nil, -- Keep default damage
                    100, -- Keep default multiplier (1.25 for blunt)
                    nil, -- Keep default damage type
                    hitData.Reach * 1.2, -- Slightly increase reach for crowbar
                    hitData.Radius, -- Keep default radius
                    "explosive")
            end
        end)
    end
end

function SWEP:OnRemove()
    hook.Remove("VRMod_MeleeHit", "ArcticVR_CursedCrowbar_Hit_" .. tostring(self:EntIndex()))
end

-- Prevent default gun click sound
function SWEP:PrimaryAttack()
    -- Do nothing to suppress default firing behavior and click sound
end

-- Prevent default gun click sound
function SWEP:SecondaryAttack()
    -- Do nothing to suppress default firing behavior and click sound
end