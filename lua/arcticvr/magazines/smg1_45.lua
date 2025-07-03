AddCSLuaFile()
mag = {}

mag.Name = "smg1_45"
mag.PrintName = "(HL2) SMG Magazine"
mag.Capacity = 45
mag.MagType = "smg1"
mag.AmmoType = "smg1"
mag.Model = "models/weapons/arcticvr/mag_smg1.mdl"
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1},
    [2] = {ind = 2, bg = 1},
    [3] = {ind = 3, bg = 1}
}
mag.Pose = {
    pos = Vector(8.3, 4, -6),
    ang = Angle(0, 0, 90)
}

ArcticVR.LoadMagazineType(mag)