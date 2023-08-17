local LocalPlayer = game:GetService("Players").LocalPlayer
local RC = LocalPlayer.PlayerFolder.Stats.RC.Value
local TargetRC = "20000000"


while true do
wait(0.1)
    RC = LocalPlayer.PlayerFolder.Stats.RC.Value
    if RC >= TargetRC then
        game.Players.LocalPlayer:Kick("RC Target reached : "..TargetRC)
    end
end