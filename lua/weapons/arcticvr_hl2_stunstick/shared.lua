AddCSLuaFile()
SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false
SWEP.ViewModel = "models/weapons/w_stunbaton.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
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
SWEP.NotAGun = true
if CLIENT then
    g_VR.viewModelInfo = g_VR.viewModelInfo or {}
    g_VR.viewModelInfo.arcticvr_hl2_stunstick = {
        offsetPos = Vector(0, 0, -3), -- forward, left, up
        offsetAng = Angle(90, 0, 0),
        noLaser = true -- you don't want a laser pointer 
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

-- Initialize the weapon and add the VRMod_MeleeHit hook with electric effect
function SWEP:Initialize()
    if self.BaseClass.Initialize then self.BaseClass.Initialize(self) end
    -- Add hook to customize stunstick hits when equipped
    hook.Add("VRMod_MeleeHit", "ArcticVR_Stunstick_Hit_" .. tostring(self:EntIndex()), function(hitData, callback)
        local ply = hitData.Attacker
        if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon() == self then
            -- Trigger electric spark effect
            local effectData = EffectData()
            effectData:SetOrigin(hitData.HitPos)
            effectData:SetNormal((hitData.HitPos - hitData.Attacker:GetPos()):GetNormalized())
            effectData:SetMagnitude(2)
            effectData:SetScale(1)
            util.Effect("TeslaHitboxes", effectData)
            callback(nil, -- Use Melee_Hit for entities, Activate for world
                "Impact.Metal", -- Custom decal for stunstick
                nil, -- Keep default damage
                nil, -- Keep default multiplier (1.1 for stunstick)
                nil, -- Keep default damage type (DMG_CLUB + DMG_SHOCK)
                hitData.Reach * 1.1, -- Slightly increase reach for stunstick
                hitData.Radius, -- Keep default radius
                "stunstick")
            -- Set impact type to stunstick
        end
    end)
end

-- Clean up the hook when the weapon is removed or dropped
function SWEP:OnRemove()
    hook.Remove("VRMod_MeleeHit", "ArcticVR_Stunstick_Hit_" .. tostring(self:EntIndex()))
end