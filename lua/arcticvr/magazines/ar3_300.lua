AddCSLuaFile()
mag = {}

mag.Name = "ar3_300"
mag.PrintName = "(HL2) Emplacement gun Magazine"
mag.Capacity = 300
mag.MagType = "ar3"
mag.AmmoType = "ar2"
mag.Model = "models/weapons/arcticvr/ar3_mag.mdl"
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1},
    [2] = {ind = 2, bg = 1},
    [3] = {ind = 3, bg = 1}
}
mag.Pose = {
    pos = Vector(-14, 21.5, 3.8),
    ang = Angle(0, 0, 0)
}

ArcticVR.LoadMagazineType(mag)