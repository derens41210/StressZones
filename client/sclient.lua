-- ╔════╗  ╔══════ ╔════╗   ╔══════ ╔╗   ║ ╔══════
-- ║    ╚╗ ║       ║    ╚╗  ║       ║╚╗  ║ ║
-- ║     ║ ╠═══    ╠╦════╝  ╠═══    ║ ╚╗ ║ ╚═════╗
-- ║    ╔╝ ║       ║╚═╗     ║       ║  ╚╗║       ║
-- ╚════╝  ╚══════ ║  ╚═╗	╚══════ ║   ╚╝ ══════╝
-- Version 1.0 

if Config.esxFrame == true then
	ESX = nil
	local segundosTotal = Config.segundosDelay * 1000

	CreateThread(function()
		local currentGasBlip = 0
		while true do
			local coordenadasUsuario = GetEntityCoords(PlayerPedId())
			local distanciaMax = Config.distanciaZona
			
			for _, zonaAntiEstres in pairs(Config.stressZones) do
				local distanciaZona = #(coordenadasUsuario - zonaAntiEstres)

				if distanciaZona < distanciaMax then
					
					TriggerEvent('esx_status:remove', 'stress', Config.cantidadStressReducir)
					TriggerEvent("pNotify:SendNotification", {text = Config.strings.menssageStressDown})
				end
			end

			Wait(segundosTotal)
		end
	end)
else
	local QBCore = exports['qb-core']:GetCoreObject()
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

end
