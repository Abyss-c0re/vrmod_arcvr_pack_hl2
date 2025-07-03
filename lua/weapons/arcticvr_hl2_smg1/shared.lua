AddCSLuaFile()

SWEP.Spawnable = true
SWEP.Category = "Half-Life 2 VR"
SWEP.AdminOnly = false
SWEP.UseHands = false

SWEP.Base = "arcticvr_base"

SWEP.ViewModel = "models/weapons/arcticvr/smg_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1_vr.mdl"

SWEP.ArcticVR = true

SWEP.Primary.ClipSize = 45
SWEP.Primary.DefaultClip = 300
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "smg1"

SWEP.Secondary.ClipSize		= 3
SWEP.Secondary.DefaultClip	= 10
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo		= "SMG1_Grenade"
SWEP.Secondary.NumShots		= 1		
SWEP.Secondary.TakeAmmoPerBullet = false	

local ShootSound2 = Sound( "weapons/ar2/ar2_altfire.wav" )

SWEP.Weight = 50
SWEP.AutoSwitchTo = true
SWEP.AutoSwitchFrom = false

SWEP.PrintName = "VR SMG"
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.Chambered = 0
SWEP.LoadedRounds = 0
SWEP.Magazine = nil

SWEP.DamageMin = 16
SWEP.DamageMax = 16
--SWEP.DamageMin = 8
--SWEP.DamageMax = 8
SWEP.MaxRange = 1000
SWEP.Penetration = 2
SWEP.MuzzleVelocity = 200000
SWEP.TracerCol = Color(255, 255, 255)
SWEP.TracerWidth = 10
SWEP.RPM = 900
SWEP.Recoil = 3
SWEP.RecoilVertical = -0.2
SWEP.RecoilSide = 0
SWEP.RecoilBalance = Vector(-1, 0, 1.1)
SWEP.Spread = 1 / 50
SWEP.MeanShotsBetweenJams = 0
SWEP.AmmoType = "smg1"

SWEP.MagType = "smg1"
SWEP.DefaultMagazine = "smg1_45"

SWEP.MuzzleEffect = "MuzzleEffect"
SWEP.CaseEffect = "arcticvr_case_hl2_47"
SWEP.BulletEffect = "arcticvr_bullet_hl2_47"

SWEP.NextPrimaryFire = 0

SWEP.FireSound = "Weapon_SMG1.Single"
SWEP.DryFireSound = "weapons/pistol/pistol_empty.wav"
SWEP.SwitchModeSound = "weapons/smg1/switch_single.wav"
SWEP.SlidePulledSound = ""
SWEP.SlideBackSound = "weapons/arcticvr/smg1_slideforward.wav"
SWEP.SlideForwardSound = "weapons/arcticvr/smg1_slideback.wav"
SWEP.SlideReleaseSound = ""
SWEP.MagInSound = "weapons/arcticvr/smg1_magin.wav"
SWEP.MagOutSound = "weapons/arcticvr/smg1_magout.wav"
SWEP.SpawnMagSound = "foley/eli_hand_pat.wav"

if CLIENT then

g_VR.viewModelInfo = g_VR.viewModelInfo or {}

g_VR.viewModelInfo.arcticvr_hl2_smg1 = {
    offsetPos = Vector(9.5, -5, -0.2), --forward, left, up
    offsetAng = Angle(0, 0, 0),
}

SWEP.NonReciprocatingChargingHandle = true
SWEP.CanLockBack = true
SWEP.MagCanDropFree = true
SWEP.BoltCanAutoRelease = true
SWEP.TwoHanded = true

SWEP.ForegripAngle = Angle(0, -20, 0)
SWEP.ForegripOffset = Vector(9.9, -3.7, 0.3)

SWEP.ForegripMins = Vector(-4, -6, -4)
SWEP.ForegripMaxs = Vector(4, 4, 4)

SWEP.Holosight = true -- weapon has holo sight
SWEP.HolosightReticle = Material("holosights/texture5")
SWEP.HolosightDist = 32
SWEP.HolosightSize = 3
SWEP.HolosightPiece = "models/weapons/arcticvr/smg_smg1_sightpiece.mdl"

SWEP.SlideMins = Vector(-3, -2, -3)
SWEP.SlideMaxs = Vector(3, 2, 3)

SWEP.MagazineInsertMins = Vector(-3, -2, -3)
SWEP.MagazineInsertMaxs = Vector(3, 2, 3)

SWEP.MagazineOffset = Vector(0, 0, -7)
SWEP.MagazineAngleOffset = Angle(0, 0, 0)

SWEP.SlideDir = Vector(-0, 0, -1.25)

SWEP.FingerAngles = {
    --right hand open angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(-2,35,10), Angle(0,5,0), Angle(0,-7.9,0), --finger 1   This is the index finger, off the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-37,0), --finger 2
    Angle(0,-35.8,-10), Angle(0,-30.6,0), Angle(0,-65.1,0), --finger 3
    Angle(0,-26.3,-25.2), Angle(0,-20,0), Angle(0,-62.5,0), --finger 4
    --right hand closed angles
    Angle(-25,-6.9,-20.1), Angle(0,0,0), Angle(0,60,0), --finger 0
    Angle(19,9,15), Angle(0,-30,0), Angle(0,-27.9,0), --finger 1   This is the index finger, on the trigger
    Angle(0,-33.6,0), Angle(0,-60,0), Angle(0,-37,0), --finger 2
    Angle(0,-35.8,-10), Angle(0,-30.6,0), Angle(0,-65.1,0), --finger 3
    Angle(0,-26.3,-25.2), Angle(0,-20,0), Angle(0,-62.5,0), --finger 4
}

SWEP.LeftHandFingerAngles = {
    -- open
    Angle(0,0,0), Angle(0,-40,0), Angle(0,0,0), --finger 0
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 1
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 2
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0), --finger 3
    Angle(0,30,0), Angle(0,10,0), Angle(0,0,0),
    -- closed
    Angle(30,-20,0), Angle(0,0,0), Angle(0,30,0),
    Angle(0,-60,-10), Angle(0,-30,0), Angle(0,-70,0),
    Angle(0,-45.-8,0), Angle(0,-30,0), Angle(0,-70,0),
    Angle(0,-39.5,4.8), Angle(0,-20,0), Angle(0,-50,0),
    Angle(0,-30,12.7), Angle(0,-10,0), Angle(0,-20,0),
}

SWEP.TriggerPulledOffset = { -- the offset of the trigger bone when it is fully pulled.
    pos = Vector(0, 0, -0),
    ang = Angle(0, 0, 30)
}


SWEP.Firemode = 2 -- 0 = safe, 1 = semi, 2 = auto, negative = burst

SWEP.SlideLockbackAmount = 1.9
SWEP.SlideBlowbackAmount = 2

SWEP.BoneIndices = {
 pistol = 0,
 magazine = 1,
 trigger = 2,
 chandle = 3,
 selector = 4,
 muzzle = 5,
 eject = 6,
 slide = 7,
 bullet = 8,
 foregrip = 9,
 holosight = 10,
}



SWEP.SlidelockActivePose = {
    pos = Vector(0, 0.16, 0),
    ang = Angle(0, 0, 0)
}


SWEP.Firemodes = {
    2
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
		// The abs velocity wont be dirty since we're setting it here
		ent:RemoveEFlags(EFL_DIRTY_ABSVELOCITY)
		
		// All children are invalid, but we are not
		local tChildren = ent:GetChildren()
			
		for i = 1, #tChildren do
			tChildren[i]:AddEFlags(EFL_DIRTY_ABSVELOCITY)
		end
		
		ent:SetSaveValue("m_vecAbsVelocity", vAbsVelocity)
		
		// m_vVelocity is only networked for the player, which is not manual mode
		local pMoveParent = ent:GetMoveParent()
		
		if (pMoveParent:IsValid()) then
			// First subtract out the parent's abs velocity to get a relative
			// velocity measured in world space
			// Transform relative velocity into parent space
			//ent:SetSaveValue("m_vecVelocity", (vAbsVelocity - pMoveParent:_GetAbsVelocity()):IRotate(pMoveParent:EntityToWorldTransform()))
			ent:SetSaveValue("velocity", vAbsVelocity)
		else
			ent:SetSaveValue("velocity", vAbsVelocity)
		end
	end
end

local sk_plr_dmg_smg1_grenade = GetConVar("sk_plr_dmg_smg1_grenade")

function SWEP:SecondaryAttack() // time to suffer
	local flCooldown = 0.5;
	if(!self:GetOwner()) then
		return false
	end
	if(self:GetOwner():GetAmmoCount("SMG1_Grenade") < 1) then
		self:SetNextPrimaryFire(CurTime() + flCooldown, self:EntIndex())
		self:SetNextSecondaryFire(CurTime() + flCooldown, self:EntIndex()) -- Double the penalty
		
		self:PlaySound("Weapon_SMG1.Empty", self:EntIndex())
		return false
	end
	
	
	local pPlayer = self:GetOwner()
	if (SERVER) then
		// Create the grenade
		local pGrenade = ents.Create("grenade_ar2")
		
		if (pGrenade:IsValid()) then
			pGrenade:SetPos(self:GetShootSrc(self:EntIndex()))
			pGrenade:SetAngles(self:GetShootAngles(self:EntIndex()))
			pGrenade:SetOwner(pPlayer)
			pGrenade:Spawn()
			
			local vVelocity = self:GetShootDir(self:EntIndex())
			vVelocity:Mul(1000)
			_SetAbsVelocity(pGrenade, vVelocity)
			
			pGrenade:SetLocalAngularVelocity(AngleRand(-400, 400))
			pGrenade:SetMoveType(MOVETYPE_FLYGRAVITY)
			pGrenade:SetMoveCollide(MOVECOLLIDE_FLY_BOUNCE)
			
			pGrenade:SetSaveValue("m_hThrower", pPlayer)
			pGrenade:SetSaveValue("m_flDamage", sk_plr_dmg_smg1_grenade:GetFloat())
		end
	end
		
	pPlayer:RemoveAmmo(1, "SMG1_Grenade")
		
	// Register a muzzleflash for the AI
	pPlayer:MuzzleFlash()
		
	pPlayer:SetAnimation(PLAYER_ATTACK1)
		
	local flNextTime = CurTime() + flCooldown
	self:SetNextPrimaryFire(CurTime(), self:EntIndex())
	self:SetNextSecondaryFire(flNextTime + flCooldown, self:EntIndex()) -- Double the penalty
		
	self:PlaySound("Weapon_SMG1.Double", self:EntIndex())
end

