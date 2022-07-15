Config = {}

-- ╔════╗  ╔══════ ╔════╗   ╔══════ ╔╗   ║ ╔══════
-- ║    ╚╗ ║       ║    ╚╗  ║       ║╚╗  ║ ║
-- ║     ║ ╠═══    ╠╦════╝  ╠═══    ║ ╚╗ ║ ╚═════╗
-- ║    ╔╝ ║       ║╚═╗     ║       ║  ╚╗║       ║
-- ╚════╝  ╚══════ ║  ╚═╗	╚══════ ║   ╚╝ ══════╝
-- Version 1.0 


-- the next option activates if it is in esx or qbcore. ESX = TRUE, QBCORE = FALSE. DEFAUL = false
Config.esxFrame = false

-- Sets the distance around where the antistress effect will be activated. DEFAULT = 20
Config.distanciaZona = 20

-- Set the amount of stress you want to eliminate. DEFAULT QB = 1, DEFAULT ESX = 600
Config.cantidadStressReducir = 600

-- Sets the time it takes for the plugin to reduce stress "in seconds". DEFAULT = 10
Config.segundosDelay = 10

-- This option is only ESX
Config.strings = {
	menssageStressDown = "Te esta bajando el estress" -- Message to notify that stress is lowering
}

-- Set anti-stress zones
Config.stressZones = {
	-- Gym
	vector3(-1209.79, -1572.5, 4.16)
}