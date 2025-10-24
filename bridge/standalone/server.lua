-- standalone server
if Config.Framework ~= "standalone" then
    return
end

--- Checks if specified player has specified job
---@param playerId number The server id of the player
---@param jobName string The job name
---@return boolean Player has job
function ValidJob(playerId, jobName)
    return true -- Always return true because no jobs in standalone
end