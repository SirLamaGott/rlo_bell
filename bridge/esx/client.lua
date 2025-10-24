-- esx client
if Config.Framework ~= "esx" then
    return
end

if GetResourceState("es_extended") ~= "started" then return end
local export, object = pcall(function()
    return exports["es_extended"]:getSharedObject()
end)

if export then
    ESX = object
else
    while not ESX do
        TriggerEvent("esx:getSharedObject", function(object)
            ESX = object
        end)

        Wait(500)
    end
end

function ShowHelpNotification(msg)
    ESX.ShowHelpNotification(msg)
end

function ShowNotification(msg)
    ESX.ShowNotification(msg)
end

function ShowAdvancedNotification(title, subtitle, text, image)
    ESX.ShowAdvancedNotification(title, subtitle, text, image, 4)
end

RegisterNetEvent("rlo_bell:client:showAdvancedNotification", function(title, subtitle, text, image)
    ShowAdvancedNotification(title, subtitle, text, image)
end)