AddCSLuaFile()
mag = {}

mag.Name = "revolver_6"
mag.PrintName = "(HL2) .357 Magnum Speedloader"
mag.Capacity = 6
mag.MagType = "revolver"
mag.AmmoType = "357"
mag.Model = "models/weapons/arcticvr/357round.mdl"
mag.Pose = {
    pos = Vector(23, 10.5, -4),
    ang = Angle(0,-10,0)
}
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1},
    [2] = {ind = 2, bg = 1},
    [3] = {ind = 3, bg = 1},
    [4] = {ind = 4, bg = 1},
    [5] = {ind = 5, bg = 1},
    [6] = {ind = 6, bg = 1}
}

ArcticVR.LoadMagazineType(mag)