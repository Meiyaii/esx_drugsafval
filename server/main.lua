ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('drugsafval', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('zd_drugsafval:drugsafval', source)
	Citizen.Wait(5000)
	xPlayer.removeInventoryItem('drugsafval', 2)
end)