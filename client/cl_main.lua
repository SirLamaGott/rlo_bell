local isBusy = false
CreateThread(function()
    while true do 
        local sleep = 1500
        local playerCoords = GetEntityCoords(PlayerPedId())

        for _, v in pairs(Config.Bells) do	
            local playerDistance = #(playerCoords - v.Coords)

            if v.Marker.Type ~= -1 and playerDistance < v.Marker.DrawDistance then 
                sleep = 0
                DrawMarker(v.Marker.Type, v.Coords.x, v.Coords.y, v.Coords.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Marker.Size.x, v.Marker.Size.y, v.Marker.Size.z, v.Marker.Color.r, v.Marker.Color.g, v.Marker.Color.b, v.Marker.Color.a, false, true, 2, false, false, false, false)
            end

            if playerDistance < 1.2 then 
                sleep = 0
                ShowHelpNotification(Translate("helpnotify"))

                if IsControlJustReleased(0, 38) then
                    if isBusy then 
                        ShowNotification(Translate("cooldown"))
                    else
                        ShowNotification(Translate("used"))
                        TriggerServerEvent("rlo_bell:server:triggerBell", v)
                        CreateThread(function()
                            isBusy = true 
                            Wait(Config.Cooldown)
                            isBusy = false
                        end)
                    end
                end	
            end
        end

        Wait(sleep)
    end
end)