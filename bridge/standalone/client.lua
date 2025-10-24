-- standalone client
if Config.Framework ~= "standalone" then
    return
end

function ShowHelpNotification(msg)
    AddTextEntry("helpNotification", msg)
    BeginTextCommandDisplayHelp("helpNotification")
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function ShowNotification(msg)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandThefeedPostTicker(0, 1)
end

function ShowAdvancedNotification(title, subtitle, text, image)
    AddTextEntry("advancedNotification", text)
    BeginTextCommandThefeedPost("advancedNotification")
    EndTextCommandThefeedPostMessagetext(image, image, false, 4, title, subtitle)
    EndTextCommandThefeedPostTicker(true, false)
end

RegisterNetEvent("rlo_bell:client:showAdvancedNotification", function(title, subtitle, text, image)
    ShowAdvancedNotification(title, subtitle, text, image)
end)