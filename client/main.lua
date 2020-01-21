ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('ab8d2fd8-bf65-40f2-8fde-b8b075af45e1')
AddEventHandler('ab8d2fd8-bf65-40f2-8fde-b8b075af45e1', function(xPlayer)
	PlayerData = xPlayer 
end)

RegisterNetEvent('zd_drugsafval:drugsafval')
AddEventHandler('zd_drugsafval:drugsafval', function()
	ESX.ShowNotification('~r~Ton aan het pakken..')
	Citizen.Wait(2000)
	ESX.ShowNotification('~r~Even rondkijken als niemand het ziet..')
	Citizen.Wait(5000)
	ESX.ShowNotification('~r~Ton neerleggen..')
	Citizen.Wait(3000)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	ESX.Game.SpawnObject('prop_barrel_02a',  {
		x = coords.x - 1,
		y = coords.y,
		z = coords.z -1
	}, function(object)
	end)
end)