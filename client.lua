ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('clip:client:usedClip')
AddEventHandler('clip:client:usedClip', function()
    if IsPedArmed(PlayerPedId(), 4) then
        local weapon = GetSelectedPedWeapon(PlayerPedId())
        TriggerServerEvent("clip:server:continue", weapon)
    else
        ESX.ShowNotification("Du hälst keine Waffe in der Hand")
    end
end)