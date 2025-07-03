AddCSLuaFile()
mag = {}

mag.Name = "12gshell_hl2_1"
mag.PrintName = "(HL2) 12 Gauge Shell"
mag.Capacity = 1
mag.MagType = "12g"
mag.AmmoType = "buckshot"
mag.Model = "models/weapons/arcticvr/shell_hl2.mdl"
mag.Pose = {
    pos = Vector(-2.9, -0.8, 1.0),
    ang = Angle(0, 0,-110)
}

ArcticVR.LoadMagazineType(mag)