-- Made by Sovf!

local TeleportService = Cloneref(game:GetService("TeleportService"))
local Players = Cloneref(GetService(game, "Players"))
local LocalPlayer = Players.LocalPlayer

if #Players:GetPlayers() < 1 then
    LocalPlayer:Kick()
    return TeleportService:Teleport(game.PlaceId)
end

TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
