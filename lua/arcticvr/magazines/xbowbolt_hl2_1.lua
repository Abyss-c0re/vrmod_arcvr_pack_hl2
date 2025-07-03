AddCSLuaFile()
mag = {}

mag.Name = "xbowbolt_hl2_1"
mag.PrintName = "(HL2) Crossbow bolt"
mag.Capacity = 1
mag.MagType = "xbowbolt"
mag.AmmoType = "xbowbolt"
mag.Model = "models/weapons/arcticvr/crossbow_bolt.mdl"
mag.BodygroupsShowBullets = {
    [1] = {ind = 1, bg = 1}
}
mag.Pose = {
    pos = Vector(-3.2, 6.7, 3),
    ang = Angle(90, 0, 0)
}

ArcticVR.LoadMagazineType(mag)