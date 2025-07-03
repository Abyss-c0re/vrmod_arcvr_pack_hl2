AddCSLuaFile()
ArcticVR = ArcticVR or {}
if not ArcticVR.RegisterCustomShell or not ArcticVR.ShotgunShellSoundsTable then return end
ArcticVR.RegisterCustomShell("arcticvr_case_hl2_357", "models/weapons/arcticvr/357case_hl2.mdl", 87, ArcticVR.ShellSoundsTable, 1)
ArcticVR.RegisterCustomShell("arcticvr_bullet_hl2_357", "models/weapons/arcticvr/357bullet_hl2.mdl", 93, ArcticVR.ShellSoundsTable, 1)

ArcticVR.RegisterCustomShell("arcticvr_case_hl2_9", "models/weapons/arcticvr/uspcase.mdl", 105, ArcticVR.ShellSoundsTable, 1)
ArcticVR.RegisterCustomShell("arcticvr_bullet_hl2_9", "models/weapons/arcticvr/uspbullet.mdl", 110, ArcticVR.ShellSoundsTable, 1)
ArcticVR.RegisterCustomShell("arcticvr_case_hl2_9_alyx", "models/weapons/arcticvr/uspcase_alyx.mdl", 105, ArcticVR.ShellSoundsTable, 1)

ArcticVR.RegisterCustomShell("arcticvr_case_hl2_47", "models/weapons/arcticvr/smgcase.mdl", 105, ArcticVR.ShellSoundsTable, 1)
ArcticVR.RegisterCustomShell("arcticvr_bullet_hl2_47", "models/weapons/arcticvr/smgbullet.mdl", 110, ArcticVR.ShellSoundsTable, 1)

ArcticVR.RegisterCustomShell("arcticvr_shell_hl2_12", "models/weapons/arcticvr/shellfull.mdl", 100, ArcticVR.ShotgunShellSoundsTable, 1, nil, true)
ArcticVR.RegisterCustomShell("arcticvr_shellspent_hl2_12", "models/weapons/arcticvr/shellempty.mdl", 110, ArcticVR.ShotgunShellSoundsTable, 1, nil, true)
ArcticVR.RegisterCustomShell("arcticvr_shellspent_hl2_12_annabelle", "models/weapons/arcticvr/shellempty_annabelle.mdl", 110, ArcticVR.ShotgunShellSoundsTable, 1, nil, true)
