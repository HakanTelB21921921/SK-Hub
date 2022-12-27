while true do
                wait(0.3) -- don't change this

                -- finding the characters
                for i, v in pairs(game.Workspace:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                                if v:FindFirstChild("Humanoid") then

                                        -- team check
                                        local victimplayers = game.Players:GetPlayerFromCharacter(v)
                                        if victimplayers.TeamColor ~= game.Players.LocalPlayer.TeamColor then

                                                -- killing everyone
                                                local Event = game:GetService("ReplicatedStorage").Event
                                                Event:FireServer(
                                                        "shootRifle",
                                                        "",
                                                        {
                                                                v.Head
                                                        }

                                                )
                                                Event:FireServer(
                                                        "shootRifle",
                                                        "hit",
                                                        {
                                                                v.Humanoid

                                                        }

                                                )
                                        end
                                end
                        end
                end
        end
end)
