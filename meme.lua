game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
		local code = game:HttpGet("https://pastebin.com/raw/")
        syn.queue_on_teleport(code)
    end
end)

if getgenv().HugeInt == nil then
    repeat wait() until game:IsLoaded() and game:GetService("Players").LocalPlayer.PlayerGui.HUDInterface ~= nil
    local Frame = game:GetService("Players").LocalPlayer.PlayerGui.HUDInterface.Container.Weapon
    
    getgenv().HugeInt = 9999999999
    
    local function ModWeapon()
        if Frame.Visible then
            for _, Ballsack in next, getgc(true) do
                if type(Ballsack) == "table" and rawget(Ballsack, "Recoil") then
                    if type(Ballsack.Recoil) == "number" then
                        if Ballsack.Recoil ~= nil then
                            Ballsack.Recoil = 0
                        end
                        if Ballsack.Velocity ~= nil then
                            Ballsack.Velocity = HugeInt
                        end
                        if Ballsack.Damage ~= nil then
                            Ballsack.Damage = HugeInt
                        end
                        if Ballsack.Range ~= nil then
                            Ballsack.Range = HugeInt
                        end
                        if Ballsack.Spread ~= nil then
                            Ballsack.Spread = HugeInt;
                        end
                        if Ballsack.Walkspeed ~= nil then
                            Ballsack.Walkspeed = 2.5
                        end
                    end
                end
            end
        end
    end
    
    Frame:GetPropertyChangedSignal("Visible"):Connect(ModWeapon)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BRM5/SilentAim.lua"))()
end
