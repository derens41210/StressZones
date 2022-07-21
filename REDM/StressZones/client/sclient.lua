-- ╔════╗  ╔══════ ╔════╗   ╔══════ ╔╗   ║ ╔══════
-- ║    ╚╗ ║       ║    ╚╗  ║       ║╚╗  ║ ║
-- ║     ║ ╠═══    ╠╦════╝  ╠═══    ║ ╚╗ ║ ╚═════╗
-- ║    ╔╝ ║       ║╚═╗     ║       ║  ╚╗║       ║
-- ╚════╝  ╚══════ ║  ╚═╗   ╚══════ ║   ╚╝ ══════╝
-- Version 1.0 

local segundosTotal = Config.segundosDelay * 1000

CreateThread(function()
	local currentGasBlip = 0
	while true do
		local coordenadasUsuario = GetEntityCoords(PlayerPedId())
		local distanciaMax = Config.distanciaZona
		
		for _, zonaAntiEstres in pairs(Config.stressZones) do
			local distanciaZona = #(coordenadasUsuario - zonaAntiEstres)

			if distanciaZona < distanciaMax then
				TriggerServerEvent('hud:server:RelieveStress', Config.cantidadStressReducir)
			end
		end

		Wait(segundosTotal)
	end
end)


