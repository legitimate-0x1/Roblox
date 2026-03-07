-- Made by Sovf!

local game = game
local GetService = game.GetService
local Cloneref = cloneref or function(...) return ... end

local GuiService = Cloneref(GetService(game, "GuiService"))

local TeleportService = Cloneref(GetService(game, "TeleportService"))
local TeleportToPlaceInstanceF = TeleportService.TeleportToPlaceInstance
local TeleportF = TeleportService.Teleport

local Players = Cloneref(GetService(game, "Players"))
local GetPlayersF = Players.GetPlayers
local LocalPlayer = Players.LocalPlayer
local KickF = LocalPlayer.Kick

GuiService.ErrorMessageChanged:Connect(function()
    if #GetPlayersF(Players) < 1 then
        KickF(LocalPlayer)
        return TeleportF(TeleportService, game.PlaceId)
    end

    TeleportToPlaceInstanceF(TeleportService, game.PlaceId, game.JobId, LocalPlayer)
end)
