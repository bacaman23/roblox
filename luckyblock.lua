local toggle = false

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg == "/e start" then
        toggle = true
    elseif msg == "/e stop" then
        toggle = false
    end
end)

while wait() do
    if toggle then
        game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
    end
end

