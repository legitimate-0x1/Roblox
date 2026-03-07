-- Made by Sovf!

local game = game
local Cloneref = cloneref or function(...) return ... end

local GuiService = Cloneref(game:GetService("GuiService"))
local TeleportService = Cloneref(game:GetService("TeleportService"))
local Players = Cloneref(GetService(game, "Players"))
local LocalPlayer = Players.LocalPlayer

GuiService.ErrorMessageChanged:Connect(function()
    if #Players:GetPlayers() < 1 then
        LocalPlayer:Kick()
        return TeleportService:Teleport(game.PlaceId)
    end

    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end)
