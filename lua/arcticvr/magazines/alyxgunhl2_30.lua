AddCSLuaFile()
mag = {}

mag.Name = "alyxgunhl2_30"
mag.PrintName = "(HL2) Alyxgun Magazine"
mag.Capacity = 30
mag.MagType = "alyxgunhl2"
mag.AmmoType = "pistol"
mag.Model = "models/weapons/arcticvr/mag_alyxgun_arcvr.mdl"
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1},
    [2] = {ind = 2, bg = 1},
    [3] = {ind = 3, bg = 1}
}
mag.Pose = {
    pos = Vector(26.8, 6.9, 1), -- forward, right, up
    ang = Angle(0, 0, 0)
}

ArcticVR.LoadMagazineType(mag)