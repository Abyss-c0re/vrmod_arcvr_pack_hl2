AddCSLuaFile()
mag = {}

mag.Name = "sniperpellet_hl2_10"
mag.PrintName = "(HL2) Combine Sniper Pellet"
mag.Capacity = 20
mag.MagType = "heavypellet"
mag.AmmoType = "ar2"
mag.Model = "models/weapons/arcticvr/sniperpellet_hl2.mdl"
mag.Pose = {
    pos = Vector(4.9, 2.4, 2.4),
    ang = Angle(0,80, 20)
}

ArcticVR.LoadMagazineType(mag)