RegisterNetEvent("rlo_bell:server:triggerBell", function(data)
    for _, playerId in ipairs(GetPlayers()) do
        if ValidJob(playerId, data.Job) then 
            local notifyData = data.Notification
            TriggerClientEvent("rlo_bell:client:showAdvancedNotification", playerId, notifyData.Title, notifyData.Subtitle, notifyData.Text, notifyData.Image)
        end
    end

    if data.Sound.File ~= nil or data.Sound.File ~= "" then
        exports["xsound"]:PlayUrlPos(-1, "bell", data.Sound.File, data.Sound.Volume, data.Coords)
        exports["xsound"]:Distance(-1, "bell", data.Sound.Range)
    end
end)