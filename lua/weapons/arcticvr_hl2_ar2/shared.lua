AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/rifle_ar2.mdl"
SWEP.WorldModel = "models/weapons/w_irifle_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 90
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "ar2"

SWEP.Secondary.ClipSize = 1
SWEP.Secondary.DefaultClip = 3
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "AR2AltFire"

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR PULSE-RIFLE"
SWEP.Slot = 2
SWEP.SlotPos = 2
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.DamageMin = 40
SWEP.DamageMax = 48
--SWEP.DamageMin = 19
--SWEP.DamageMax = 24
SWEP.MaxRange = 1000
SWEP.Penetration = 0
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 102)
SWEP.TracerWidth = 20
SWEP.RPM = 667
SWEP.Firemode = 2
SWEP.Recoil = 2
SWEP.RecoilVertical = 0
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-1, 0.05, 1)
SWEP.Spread = 3 / 125
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "ar2"
SWEP.TracerOverride = "AR2Tracer"

SWEP.MagType = "ar2"
SWEP.DefaultMagazine = "ar2_30"

SWEP.MuzzleEffectScale = 0.1
SWEP.MuzzleEffect = "ChopperMuzzleFlash"
SWEP.CaseEffect = ""
SWEP.BulletEffect = ""

SWEP.FireSound = "Weapon_AR2.Single"
SWEP.DryFireSound = "weapons/ar2/ar2_empty.wav"
SWEP.SwitchModeSound = "weapons/ar2/ar2_empty.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/ar2/ar2_reload_rotate.wav"
SWEP.SlideReleaseSound = "weapons/ar2/ar2_reload_push.wav"
SWEP.SlideForwardSound = "weapons/ar2/ar2_reload_push.wav"
SWEP.MagInSound = "weapons/arcticvr/ar2_maginsert.wav"
SWEP.MagOutSound = "weapons/arcticvr/ar2_magout.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

SWEP.InternalMagazine = false

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_ar2 = {
    offsetPos = Vector(8.1, -4, -0.9), --forward, left, up (gun orientation)
    offsetAng = Angle(0, -0, 0),
}

SWEP.TriggerPulledOffset = { -- the offset of the trigger bone when it is fully pulled.
    pos = Vector(-0.6, 0, -0), -- forward, up, right
    ang = Angle(0, 0, 0)
}

SWEP.NonReciprocatingChargingHandle = true
SWEP.CanLockBack = true
SWEP.MagCanDropFree = false
SWEP.BoltCanAutoRelease = true
SWEP.TwoStageTrigger = true
SWEP.CHandleRaise = true
SWEP.HKSlap = true
SWEP.CanDirectChamber = false
SWEP.MustBeOpenToLoad = false
SWEP.ShootStraightFromMag = false

SWEP.TwoHanded = true

SWEP.ForegripAngle = Angle(0, -60, -90)
SWEP.ForegripOffset = Vector(8.5, -4.4, -0.3)

SWEP.ForegripMins = Vector(-3, -3, -2)
SWEP.ForegripMaxs = Vector(3, 2, 2)

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

SWEP.FullBackOffset = {
    vent = {
        pos = Vector(0, 0, -0.7),
        ang = Angle(0, 0, 0)
    }
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
    vent = 11,
}


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
    Angle(0,10,0), Angle(20,10,20), Angle(0,-10,0),
    Angle(0,0,-10), Angle(0,-20,0), Angle(0,-25,0),
    Angle(0,-10,-5), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,-7,4.8), Angle(0,-30,0), Angle(0,-0,0),
    Angle(0,-10,15.7), Angle(0,-30,0), Angle(0,10,0),
}


SWEP.SlidelockActivePose = {
    pos = Vector(0.1, 0, 0),
    ang = Angle(0, 0, 0)
}

SWEP.FireSelectPoses = {
    [0] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 179)}
    },
    [1] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 90)}
    },
    [2] = {
        selector = {pos = Vector(0, 0, 0), ang = Angle(0, 0, 0)}
    },
}

SWEP.Firemodes = {
    2,
}

end

// EVENTS
function SWEP:Initialize()
	if (self.m_bInitialized) then
		return
	end
		
	self.m_bInitialized = true
	self.m_tEvents = {}
	self.m_tEventHoles = {}
	self.m_tRemovalQueue = {}
end

function SWEP:Think()
	-- Fixes clientside not initializing on occasion
	if (not self.m_bInitialized) then
		self:Initialize()
	end
	
	local bFirstTimePredicted = IsFirstTimePredicted()
	
	-- Events are removed one Think after they mark themselves as complete to maintain clientside prediction
	if (bFirstTimePredicted) then
		for key, _ in pairs(self.m_tRemovalQueue) do
			self.m_tRemovalQueue[key] = nil
			self.m_tEvents[key] = nil
			
			if (isnumber(key)) then
				self.m_tEventHoles[key] = true
			end
		end
	end
	
	-- Events have priority over main think function
	local flCurTime = CurTime()
	
	for key, tbl in pairs(self.m_tEvents) do
		-- Only start running on the first prediction time
		if (bFirstTimePredicted) then
			self.m_tEvents[key][4] = true
		elseif (not self.m_tEvents[key][4]) then
			continue
		end
		
		-- -1 is an event that counts as active but never ran
		if (tbl[1] ~= -1) then
			if (tbl[2] <= flCurTime) then
				local RetVal = tbl[3]()
				
				if (RetVal == true) then
					self.m_tRemovalQueue[key] = true
				else
					-- Update interval
					if (isnumber(RetVal)) then
						tbl[1] = RetVal
					end
					
					tbl[2] = flCurTime + tbl[1]
				end
			end
		end
	end
end
function SWEP:AddEvent(sName, iTime, fCall, bNoPrediction)
	local bAddedByName = isstring(sName)
	
	if (IsFirstTimePredicted() or (bAddedByName and bNoPrediction or fCall == true)) then
		if (bAddedByName) then -- Added by name
			sName = sName:lower()
			self.m_tEvents[sName] = {iTime, CurTime() + iTime, fCall, false}
			self.m_tRemovalQueue[sName] = nil -- Fixes edge case of event being added upon removal
		else
			local iPos = next(self.m_tEventHoles)
			
			if (iPos) then
				self.m_tEvents[iPos] = {sName, CurTime() + sName, iTime, false}
				self.m_tEventHoles[iPos] = nil
			else
				-- No holes, we can safely use the count operation
				self.m_tEvents[#self.m_tEvents] = {sName, CurTime() + sName, iTime, false}
			end
		end
	end
end

function SWEP:EventActive(sName, bNoPrediction)
	sName = sName:lower()
	
	return self.m_tEvents[sName] ~= nil and (bNoPrediction or IsFirstTimePredicted() or self.m_tEvents[sName][4])
end
//
function SWEP:PlaySound(sSound, iIndex, bPlayShared --[[= false]])	
	if (sSound == "") then
		return false
	end
	
	if (bPlayShared or SERVER) then
		local pPlayer = self:GetOwner()
		
		if (pPlayer:IsValid()) then
			pPlayer:EmitSound(sSound)
		else
			self:EmitSound(sSound)
		end
	end
	
	return true
end
function SWEP:GetShootAngles(iIndex --[[= 0]])
	local pPlayer = self:GetOwner()
	
	return pPlayer:EyeAngles() + pPlayer:GetViewPunchAngles()
end
function SWEP:GetShootSrc(iIndex --[[= 0]])
	return self:GetOwner():GetShootPos()
end
function SWEP:GetShootDir(iIndex --[[= 0]])
	return self:GetShootAngles(iIndex):Forward()
end
function _SetAbsVelocity(ent, vAbsVelocity)
	if (ent:GetInternalVariable("m_vecAbsVelocity") ~= vAbsVelocity) then
		// The abs velocity won't be dirty since we're setting it here
		ent:RemoveEFlags(EFL_DIRTY_ABSVELOCITY)
		
		// All children are invalid, but we are not
		local tChildren = ent:GetChildren()
			
		for i = 1, #tChildren do
			tChildren[i]:AddEFlags(EFL_DIRTY_ABSVELOCITY)
		end
		
		ent:SetSaveValue("m_vecAbsVelocity", vAbsVelocity)
		
		// NOTE: Do *not* do a network state change in this case.
		// m_vVelocity is only networked for the player, which is not manual mode
		local pMoveParent = ent:GetMoveParent()
		
		if (pMoveParent:IsValid()) then
			// First subtract out the parent's abs velocity to get a relative
			// velocity measured in world space
			// Transform relative velocity into parent space
			--ent:SetSaveValue("m_vecVelocity", (vAbsVelocity - pMoveParent:_GetAbsVelocity()):IRotate(pMoveParent:EntityToWorldTransform()))
			ent:SetSaveValue("velocity", vAbsVelocity)
		else
			ent:SetSaveValue("velocity", vAbsVelocity)
		end
	end
end

local vLaunch = Vector(500, 500, 500)
local cFlash = Color(255, 255, 255, 64)
local sk_weapon_ar2_alt_fire_radius = GetConVar("sk_weapon_ar2_alt_fire_radius")
local sk_weapon_ar2_alt_fire_duration = GetConVar("sk_weapon_ar2_alt_fire_duration")
local sk_weapon_ar2_alt_fire_mass = GetConVar("sk_weapon_ar2_alt_fire_mass")

function SWEP:SecondaryAttack() // time to suffer
	local flCooldown = 0.5;
	if(!self:GetOwner()) then
		return false
	end
	if(self:GetOwner():GetAmmoCount("AR2AltFire") < 1) then
		self:SetNextPrimaryFire(CurTime() + flCooldown, self:EntIndex())
		self:SetNextSecondaryFire(CurTime() + flCooldown, self:EntIndex()) -- Double the penalty
		
		self:PlaySound("Weapon_IRifle.Empty", self:EntIndex())
		return false
	end
	
	
	self:AddEvent("charge_" .. (self:EntIndex() or 0), flCooldown, function()

		local pPlayer = self:GetOwner()
		
		if (SERVER) then
			pPlayer:ScreenFade(SCREENFADE.IN, cFlash, 0.1, 0)
			
			// Create the grenade
			local pBall = ents.Create("prop_combine_ball")
			
			if (pBall:IsValid()) then
				pBall:SetSaveValue("m_flRadius", sk_weapon_ar2_alt_fire_radius:GetFloat())
				
				pBall:SetPos(self:GetShootSrc(self:EntIndex()))
				pBall:SetOwner(pPlayer)
				
				local vVelocity = self:GetShootDir(self:EntIndex())
				vVelocity:Mul(1000)
				_SetAbsVelocity(pBall, vVelocity)
				pBall:Spawn()
				
				local flTime = CurTime()
				pBall:SetSaveValue("m_flLastCaptureTime", flTime)
				pBall:SetSaveValue("m_nState", 2) -- STATE_THROWN
				pBall:SetSaveValue("m_flSpeed", vVelocity:Length())
				
				pBall:EmitSound("NPC_CombineBall.Launch")
				
				local pPhysObj = pBall:GetPhysicsObject()
				
				if (pPhysObj:IsValid()) then
					pPhysObj:AddGameFlag(FVPHYSICS_WAS_THROWN)
					pPhysObj:SetMass(sk_weapon_ar2_alt_fire_mass:GetFloat())
					pPhysObj:SetInertia(vLaunch)
				end
				
				-- WizzSoundThink seems to be set automatically, luckily!
				-- Otherwise, the entity would have to be pseudo-simulated by a grav gun
				-- And have all the values reset
				
				local sName = "GS-Weapons-HL2-Combine Ball Explode-" .. pBall:EntIndex()
				flTime = flTime + sk_weapon_ar2_alt_fire_duration:GetFloat()
				
				hook.Add("Tick", sName, function()
					if (not (pBall:IsValid() and pBall:GetSaveTable()["m_nState"] == 2)) then
						hook.Remove("Tick", sName)
					elseif (flTime <= CurTime()) then
						pBall:Fire("Explode")
						hook.Remove("Tick", sName)
					end
				end)
				
				pBall:SetSaveValue("m_bWeaponLaunched", true)
			end
		end
		
		pPlayer:RemoveAmmo(1, "AR2AltFire")
		
		// Register a muzzleflash for the AI
		pPlayer:MuzzleFlash()
		
		pPlayer:SetAnimation(PLAYER_ATTACK1)
		
		local flNextTime = CurTime() + flCooldown
		self:SetNextPrimaryFire(flNextTime, self:EntIndex())
		self:SetNextSecondaryFire(flNextTime + flCooldown, self:EntIndex()) -- Double the penalty
		
		self:PlaySound("Weapon_IRifle.Single", self:EntIndex())
		
		return true
	end)
	
	self:PlaySound("Weapon_CombineGuard.Special1", self:EntIndex())
	local flNextTime_fuck = CurTime() + flCooldown
	self:SetNextPrimaryFire(flNextTime_fuck)
	self:SetNextSecondaryFire(flNextTime_fuck)
end