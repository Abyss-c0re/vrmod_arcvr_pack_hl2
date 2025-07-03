AddCSLuaFile()
mag = {}

mag.Name = "ar2_30"
mag.PrintName = "(HL2) Pulse-Rifle Magazine"
mag.Capacity = 30
mag.MagType = "ar2"
mag.AmmoType = "ar2"
mag.Model = "models/weapons/arcticvr/mag_ar2.mdl"
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1}
}
mag.Pose = {
    pos = Vector(-2.99, 12, 3.3),  -- forward, right, up
    ang = Angle(30, 0, 0)
}

ArcticVR.LoadMagazineType(mag)