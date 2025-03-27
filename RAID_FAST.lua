local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("AccRaid_BETA")

wait(5)

getgenv().AutoRaidFAST = true -- to turn stop doing raids do "false" to start it again do "true"

task.spawn(function()
    wait(5)

    local function teleportPlayer()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


        local targetPosition = Vector3.new(-5285.70751953125, 161.93984985351562, -500.4004821777344)


        humanoidRootPart.CFrame = CFrame.new(targetPosition)
    end


    teleportPlayer()
end)

task.spawn(function()
    while task.wait(0.1) do
        if getgenv().AutoRaidFAST == true then

            local raid = game.Workspace:FindFirstChild("raid")
            local eternalDragon = raid and raid:FindFirstChild("eternal_dragon")
            local blueEyes = eternalDragon and eternalDragon:FindFirstChild("Blue Eyes White Dragon")
            local prox = blueEyes and blueEyes:FindFirstChild("ProximityPrompt")

            if prox then
                fireproximityprompt(prox)
                print("Raid Started")
                task.wait(0.1)
            else
                print("Proximity Prompt not found!")
            end
        end
    end
end)

task.spawn(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/rblx/refs/heads/main/AnTIAFK'))()
end)
