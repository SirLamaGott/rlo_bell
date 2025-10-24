-- esx server
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

--- Checks if specified player has specified job
---@param playerId number The server id of the player
---@param jobName string The job name
---@return boolean Player has job
function ValidJob(playerId, jobName)
    local xPlayer = ESX.GetPlayerFromId(playerId)

    if not xPlayer then 
        return false
    end

    return xPlayer.job.name == jobName
end