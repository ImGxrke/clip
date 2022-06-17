ESX = exports["es_extended"]:getSharedObject()


ESX.RegisterUsableItem("clip", function(source)
    TriggerClientEvent('clip:client:usedClip', source)
end)

RegisterServerEvent("clip:server:continue")
AddEventHandler("clip:server:continue", function(weapon)
    local xPlayer = ESX.GetPlayerFromId(source)    
    local weaponname = ESX.GetWeaponFromHash(weapon).name

    if xPlayer.getInventoryItem('clip').count >= 1 then
        xPlayer.addWeaponAmmo(weaponname, 20)

        xPlayer.removeInventoryItem("clip", 1)
    else 
        ESX.ShowNotification("Du hast ein Magazin in deinen Taschen")
    end
end)