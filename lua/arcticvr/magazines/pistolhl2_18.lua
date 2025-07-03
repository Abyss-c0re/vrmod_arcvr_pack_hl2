AddCSLuaFile()
mag = {}

mag.Name = "pistolhl2_18"
mag.PrintName = "(HL2) 9MM Pistol Magazine"
mag.Capacity = 18
mag.MagType = "pistolhl2"
mag.AmmoType = "pistol"
mag.Model = "models/weapons/arcticvr/mag_pistol.mdl"
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1},
    [2] = {ind = 2, bg = 1},
    [3] = {ind = 3, bg = 1}
}
mag.Pose = {
    pos = Vector(25.2, 0.7, -4.6),
    ang = Angle(0, 0, 90)
}

ArcticVR.LoadMagazineType(mag)