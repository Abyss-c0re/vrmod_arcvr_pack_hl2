AddCSLuaFile()
mag = {}

mag.Name = "rpgrocket_hl2_1"
mag.PrintName = "(HL2) RPG Rocket"
mag.Capacity = 1
mag.MagType = "hl2rpgrocket"
mag.AmmoType = "RPG_Round"
mag.Model = "models/weapons/arcticvr/rocket_rpg_hl2.mdl"
mag.Pose = {
    pos = Vector(-6.8, 9, 2),
    ang = Angle(110,0,0)
}

ArcticVR.LoadMagazineType(mag)