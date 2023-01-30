TheMainKey = "gfosuhnfdaouhfaoushjoisdhjoauhfbsoish"

if game.PlaceId == 6884319169 then
   print("Game Detected : MIC UP 🔊 Loaded Successfully")

   getgenv().SecureMode = true
   local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

   local Window = lib:CreateWindow({
      Name = "MIC UP 🔊 / Version 4.0",
      LoadingTitle = "Loading MIC UP 🔊",
      LoadingSubtitle = "By Joe",
      ConfigurationSaving = {
         Enabled = false,
         FolderName = nil,
         FileName = "Big Hub"
      },
      Discord = {
         Enabled = false,
         Invite = "ABCD",
         RememberJoins = false
      },
      KeySystem = true,
      KeySettings = {
         Title = "Scouse Starter Pack",
         Subtitle = "Key System",
         Note = "Go To Discord Channel To Find Key",
         FileName = "ScouseKey",
         SaveKey = true,
         GrabKeyFromSite = false,
         Key = TheMainKey
      }
   })

   local Tab = Window:CreateTab("Main")

   local Paragraph = Tab:CreateParagraph({Title = "READ ME THIS IS IMPORTANT", Content = "In certain roblox games it will block you from using these so if they dont work in some games dont complain to me i cannot be bothered to recode it to work."})

   Tab:CreateSection("Character Modifications")

   -- Services --
   local Players = game:GetService"Players"
   local TweenService = game:GetService"TweenService"

   -- User --
   local Player = Players.LocalPlayer
   local Character = Player.Character
   local Humanoid = Character.Humanoid

   -- Reset Sliders --
   resetAllSliders = false

   -- Character Section --
   local Noclipp = Tab:CreateToggle({
      Name = "Noclip (Kinda Works)",
      CurrentValue = false,
      Flag = "Noclip", 
      Callback = function(state)
         local player = game.Players.LocalPlayer
         local character = player.Character

        while true do
            if state == true then
                for _, v in pairs(character:GetDescendants()) do
                    pcall(function()
                        if v:IsA("BasePart") then
                           Character.UpperTorso.CanCollide = false
                           Character.LowerTorso.CanCollide = false
                           Character.Head.CanCollide = false
                           Character.HumanoidRootPart.CanCollide = false
                        end
                    end)
                end
            end
                if state == false then -- or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
                    for _, v in pairs(character:GetDescendants()) do  
                     state = false
                        pcall(function()
                            if v:IsA("BasePart") then
                              Character.UpperTorso.CanCollide = true
                              Character.LowerTorso.CanCollide = true
                              Character.Head.CanCollide = true
                              Character.HumanoidRootPart.CanCollide = true
                            end
                        end)
                    end
                end

               game:GetService("RunService").Stepped:wait()
         end
      end,
   })

   game:GetService("UserInputService").JumpRequest:connect(function()
      if InfJump == true then
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
      end
   end)
   local Toggle = Tab:CreateToggle({
      Name = "Infinite Jump",
      CurrentValue = false,
      Flag = "InfiniteJump", 
      Callback = function(state)
         InfJump = state
      end,
   })

   local Keybind = Tab:CreateKeybind({
      Name = "Fall Over",
      CurrentKeybind = "Q",
      HoldToInteract = false,
      Flag = "FallOver",
      Callback = function(Keybind)
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState(0)
      end,
   })

   local WalkSpeed = Tab:CreateSlider({
      Name = "Walk Speed",
      Range = {16, 300},
      Increment = 1,
      Suffix = "Walk Speed",
      CurrentValue = 16,
      Flag = "WalkSpeed",
      Callback = function(number)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
      end,
   })

   local JumpPower = Tab:CreateSlider({
      Name = "Jump Height",
      Range = {50, 500},
      Increment = 1,
      Suffix = "Jump Power",
      CurrentValue = 50,
      Flag = "JumpPower",
      Callback = function(number)
         Humanoid.JumpPower = number
      end,
   })

   local Camera = workspace.CurrentCamera
   local FovSlider = Tab:CreateSlider({
      Name = "Fov Slider",
      Range = {0, 240},
      Increment = 1,
      Suffix = "Fov Slider",
      CurrentValue = 70,
      Flag = "FovSlider",
      Callback = function(number)
         Camera.FieldOfView = number
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset All Sliders",
      Callback = function()
         FovSlider:Set(70)
         JumpPower:Set(50)
         WalkSpeed:Set(16)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset Character And Go Back To Position",
      Callback = function()
         PosX = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
         PosY = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
         PosZ = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
         print(PosX, PosY, PosZ)
         game.Players.LocalPlayer.Character.Humanoid.Health = 0
         wait(6)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PosX, PosY, PosZ)
      end,
   })

   Tab:CreateSection("Server Options")

   local Button = Tab:CreateButton({
      Name = "Rejoin Server",
      Callback = function()
         local ts = game:GetService("TeleportService")
         local p = game:GetService("Players").LocalPlayer
         ts:Teleport(game.PlaceId, p)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Find A New Server",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/ServerHop.lua"))()
      end,
   })

   local Tab = Window:CreateTab("Scripts")

   Tab:CreateSection("Spy Scripts")

   local Button = Tab:CreateButton({
      Name = "Chat Spy",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Chat%20Spy.lua"))();
      end,
   })

   Tab:CreateSection("Admin GUI")

   local Button = Tab:CreateButton({
      Name = "Infinite Yield",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Fates Admin",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
      end,
   })

   Tab:CreateSection("Other Script Hubs")

   local Button = Tab:CreateButton({
      Name = "DomainX",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source'))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "FE Script Hubs",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/UFE'))()
      end,
   })

   Tab:CreateSection("FE Scripts")

   local Button = Tab:CreateButton({
      Name = "Dances FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Griddy.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Walk On Walls FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/RunOnWalls.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Giant FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/MIC-UP/main/SCRIPT"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Snake FE",
      Callback = function()
         loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw'))()
      end,
   })

   local Tab = Window:CreateTab("Teleports")

   Tab:CreateSection("Teleport Options")

   local Button = Tab:CreateButton({
      Name = "Tools",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.64019012451172, 5.136971950531006, -60.52338790893555)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Donut Shop",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77.43598175048828, 3.3224036693573, -80.3628921508789)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Bathroom",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-73.54572296142578, 5.235297679901123, 91.76410675048828)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Slide",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.912853240966797, 284.5441589355469, 188.19432067871094)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Top Top Of Tower",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(57.1019401550293, 313.44952392578125, 226.19265747070312)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Stage",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.93522644042969, 10.222357749938965, 241.90924072265625)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Football",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(191.52305603027344, 5.136989116668701, 196.5418701171875)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Stands",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.6304931640625, 5.136971950531006, 74.53134155273438)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Chill Circle",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(218.3397979736328, 5.675833225250244, -10.302614212036133)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Private Rooms",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(220.93231201171875, 5.136974334716797, 29.615930557250977)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "On Top Of Box 1",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4216.87744140625, 23.670637130737305, 60.53307342529297)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "On Top Of Box 2",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6221.580078125, 41.670623779296875, 59.845462799072266)
      end,
   })
elseif game.PlaceId == 40161917 then
   print("Game Detected : Universal Script Loaded Successfully")

   getgenv().SecureMode = true
   local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

   local Window = lib:CreateWindow({
      Name = "Universal Script / Version 4.0",
      LoadingTitle = "Loading Universal Script",
      LoadingSubtitle = "By Joe",
      ConfigurationSaving = {
         Enabled = false,
         FolderName = nil,
         FileName = "Big Hub"
      },
      Discord = {
         Enabled = false,
         Invite = "ABCD",
         RememberJoins = false
      },
      KeySystem = true,
      KeySettings = {
         Title = "Scouse Starter Pack",
         Subtitle = "Key System",
         Note = "Go To Discord Channel To Find Key",
         FileName = "ScouseKey",
         SaveKey = true,
         GrabKeyFromSite = false,
         Key = TheMainKey
      }
   })

   local Tab = Window:CreateTab("Main")

   local Paragraph = Tab:CreateParagraph({Title = "READ ME THIS IS IMPORTANT", Content = "In certain roblox games it will block you from using these so if they dont work in some games dont complain to me i cannot be bothered to recode it to work."})

   Tab:CreateSection("Character Modifications")

   -- Services --
   local Players = game:GetService"Players"
   local TweenService = game:GetService"TweenService"

   -- User --
   local Player = Players.LocalPlayer
   local Character = Player.Character
   local Humanoid = Character.Humanoid

   -- Reset Sliders --
   

   -- Character Section --
   local Noclipp = Tab:CreateToggle({
      Name = "Noclip (Kinda Works)",
      CurrentValue = false,
      Flag = "Noclip", 
      Callback = function(state)
         local player = game.Players.LocalPlayer
         local character = player.Character

        while true do
            if state == true then
                for _, v in pairs(character:GetDescendants()) do
                    pcall(function()
                        if v:IsA("BasePart") then
                           Character.UpperTorso.CanCollide = false
                           Character.LowerTorso.CanCollide = false
                           Character.Head.CanCollide = false
                           Character.HumanoidRootPart.CanCollide = false
                        end
                    end)
                end
            end
                if state == false then -- or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
                    for _, v in pairs(character:GetDescendants()) do  
                     state = false
                        pcall(function()
                            if v:IsA("BasePart") then
                              Character.UpperTorso.CanCollide = true
                              Character.LowerTorso.CanCollide = true
                              Character.Head.CanCollide = true
                              Character.HumanoidRootPart.CanCollide = true
                            end
                        end)
                    end
                end

               game:GetService("RunService").Stepped:wait()
         end
      end,
   })

   game:GetService("UserInputService").JumpRequest:connect(function()
      if InfJump == true then
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
      end
   end)
   local InfiniteJump = Tab:CreateToggle({
      Name = "Infinite Jump",
      CurrentValue = false,
      Flag = "InfiniteJump", 
      Callback = function(state)
         InfJump = state
      end,
   })

   local Keybind = Tab:CreateKeybind({
      Name = "Fall Over",
      CurrentKeybind = "Q",
      HoldToInteract = false,
      Flag = "FallOver",
      Callback = function(Keybind)
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState(0)
      end,
   })

   local WalkSpeed = Tab:CreateSlider({
      Name = "Walk Speed",
      Range = {16, 300},
      Increment = 1,
      Suffix = "Walk Speed",
      CurrentValue = 16,
      Flag = "WalkSpeed",
      Callback = function(number)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
      end,
   })

   local JumpPower = Tab:CreateSlider({
      Name = "Jump Height",
      Range = {50, 500},
      Increment = 1,
      Suffix = "Jump Power",
      CurrentValue = 50,
      Flag = "JumpPower",
      Callback = function(number)
         Humanoid.JumpPower = number
      end,
   })

   local Camera = workspace.CurrentCamera
   local FovSlider = Tab:CreateSlider({
      Name = "Fov Slider",
      Range = {0, 240},
      Increment = 1,
      Suffix = "Fov Slider",
      CurrentValue = 70,
      Flag = "FovSlider",
      Callback = function(number)
         Camera.FieldOfView = number
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset All Sliders",
      Callback = function()
         FovSlider:Set(70)
         JumpPower:Set(50)
         WalkSpeed:Set(16)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset Character And Go Back To Position",
      Callback = function()
         PosX = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
         PosY = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
         PosZ = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
         print(PosX, PosY, PosZ)
         game.Players.LocalPlayer.Character.Humanoid.Health = 0
         wait(6)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PosX, PosY, PosZ)
      end,
   })

   Tab:CreateSection("Server Options")

   local Button = Tab:CreateButton({
      Name = "Rejoin Server",
      Callback = function()
         local ts = game:GetService("TeleportService")
         local p = game:GetService("Players").LocalPlayer
         ts:Teleport(game.PlaceId, p)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Find A New Server",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/ServerHop.lua"))()
      end,
   })

   local Tab = Window:CreateTab("Scripts")

   Tab:CreateSection("Spy Scripts")

   local Button = Tab:CreateButton({
      Name = "Chat Spy",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Chat%20Spy.lua"))();
      end,
   })

   Tab:CreateSection("Admin GUI")

   local Button = Tab:CreateButton({
      Name = "Infinite Yield",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Fates Admin",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
      end,
   })

   Tab:CreateSection("Other Script Hubs")

   local Button = Tab:CreateButton({
      Name = "DomainX",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source'))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "FE Script Hubs",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/UFE'))()
      end,
   })

   Tab:CreateSection("FE Scripts")

   local Button = Tab:CreateButton({
      Name = "Dances FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Griddy.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Walk On Walls FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/RunOnWalls.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Giant FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/MIC-UP/main/SCRIPT"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Snake FE",
      Callback = function()
         loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw'))()
      end,
   })

elseif game.PlaceId == 11400511154 then
   print("Game Detected : Monkey Tycoon 🐒 Loaded Successfully")

   getgenv().SecureMode = true
   local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

   local Window = lib:CreateWindow({
      Name = "Monkey Tycoon 🐒 / Version 4.0",
      LoadingTitle = "Loading Monkey Tycoon 🐒",
      LoadingSubtitle = "By Joe",
      ConfigurationSaving = {
         Enabled = false,
         FolderName = nil,
         FileName = "Big Hub"
      },
      Discord = {
         Enabled = false,
         Invite = "ABCD",
         RememberJoins = false
      },
      KeySystem = true,
      KeySettings = {
         Title = "Scouse Starter Pack",
         Subtitle = "Key System",
         Note = "Go To Discord Channel To Find Key",
         FileName = "ScouseKey",
         SaveKey = true,
         GrabKeyFromSite = false,
         Key = TheMainKey
      }
   })

   local Tab = Window:CreateTab("Main")

   local Paragraph = Tab:CreateParagraph({Title = "READ ME THIS IS IMPORTANT", Content = "In certain roblox games it will block you from using these so if they dont work in some games dont complain to me i cannot be bothered to recode it to work."})

   Tab:CreateSection("Character Modifications")

   -- Services --
   local Players = game:GetService"Players"
   local TweenService = game:GetService"TweenService"

   -- User --
   local Player = Players.LocalPlayer
   local Character = Player.Character
   local Humanoid = Character.Humanoid

   -- Reset Sliders --
   

   -- Character Section --
   local Noclipp = Tab:CreateToggle({
      Name = "Noclip (Kinda Works)",
      CurrentValue = false,
      Flag = "Noclip", 
      Callback = function(state)
         local player = game.Players.LocalPlayer
         local character = player.Character

        while true do
            if state == true then
                for _, v in pairs(character:GetDescendants()) do
                    pcall(function()
                        if v:IsA("BasePart") then
                           Character.UpperTorso.CanCollide = false
                           Character.LowerTorso.CanCollide = false
                           Character.Head.CanCollide = false
                           Character.HumanoidRootPart.CanCollide = false
                        end
                    end)
                end
            end
                if state == false then -- or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
                    for _, v in pairs(character:GetDescendants()) do  
                     state = false
                        pcall(function()
                            if v:IsA("BasePart") then
                              Character.UpperTorso.CanCollide = true
                              Character.LowerTorso.CanCollide = true
                              Character.Head.CanCollide = true
                              Character.HumanoidRootPart.CanCollide = true
                            end
                        end)
                    end
                end

               game:GetService("RunService").Stepped:wait()
         end
      end,
   })

   game:GetService("UserInputService").JumpRequest:connect(function()
      if InfJump == true then
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
      end
   end)
   local Toggle = Tab:CreateToggle({
      Name = "Infinite Jump",
      CurrentValue = false,
      Flag = "InfiniteJump", 
      Callback = function(state)
         InfJump = state
      end,
   })

   local Keybind = Tab:CreateKeybind({
      Name = "Fall Over",
      CurrentKeybind = "Q",
      HoldToInteract = false,
      Flag = "FallOver",
      Callback = function(Keybind)
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState(0)
      end,
   })

   local WalkSpeed = Tab:CreateSlider({
      Name = "Walk Speed",
      Range = {16, 300},
      Increment = 1,
      Suffix = "Walk Speed",
      CurrentValue = 16,
      Flag = "WalkSpeed",
      Callback = function(number)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
      end,
   })

   local JumpPower = Tab:CreateSlider({
      Name = "Jump Height",
      Range = {50, 500},
      Increment = 1,
      Suffix = "Jump Power",
      CurrentValue = 50,
      Flag = "JumpPower",
      Callback = function(number)
         Humanoid.JumpPower = number
      end,
   })

   local Camera = workspace.CurrentCamera
   local FovSlider = Tab:CreateSlider({
      Name = "Fov Slider",
      Range = {0, 240},
      Increment = 1,
      Suffix = "Fov Slider",
      CurrentValue = 70,
      Flag = "FovSlider",
      Callback = function(number)
         Camera.FieldOfView = number
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset All Sliders",
      Callback = function()
         FovSlider:Set(70)
         JumpPower:Set(50)
         WalkSpeed:Set(16)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset Character And Go Back To Position",
      Callback = function()
         PosX = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
         PosY = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
         PosZ = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
         print(PosX, PosY, PosZ)
         game.Players.LocalPlayer.Character.Humanoid.Health = 0
         wait(6)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PosX, PosY, PosZ)
      end,
   })

   Tab:CreateSection("Server Options")

   local Button = Tab:CreateButton({
      Name = "Rejoin Server",
      Callback = function()
         local ts = game:GetService("TeleportService")
         local p = game:GetService("Players").LocalPlayer
         ts:Teleport(game.PlaceId, p)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Find A New Server",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/ServerHop.lua"))()
      end,
   })

   local Tab = Window:CreateTab("Scripts")

   Tab:CreateSection("Spy Scripts")

   local Button = Tab:CreateButton({
      Name = "Chat Spy",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Chat%20Spy.lua"))();
      end,
   })

   Tab:CreateSection("Admin GUI")

   local Button = Tab:CreateButton({
      Name = "Infinite Yield",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Fates Admin",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
      end,
   })

   Tab:CreateSection("Other Script Hubs")

   local Button = Tab:CreateButton({
      Name = "DomainX",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source'))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "FE Script Hubs",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/UFE'))()
      end,
   })

   Tab:CreateSection("FE Scripts")

   local Button = Tab:CreateButton({
      Name = "Dances FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Griddy.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Walk On Walls FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/RunOnWalls.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Giant FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/MIC-UP/main/SCRIPT"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Snake FE",
      Callback = function()
         loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw'))()
      end,
   })

   local Tab = Window:CreateTab("Monkey Tycoon")

   -- Values
   _G.autoCollectBananas = true
   _G.autoDepositBananas = true
   _G.autoBuyMaxMonkeys = true
   _G.autoMergeMonkeys = true
   _G.autoBuySpeed = true

   -- Functions 
   function autoCollectBananas()
      while _G.autoCollectBananas == true do
          local args = {
              [1] = Amount
          }
          game:GetService("ReplicatedStorage").GTycoonClient.Remotes.GrabDrops:FireServer(unpack(args))
          wait(.0001)
      end
  end
  
   function autoDepositBananas()
         while _G.autoDepositBananas == true do
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.DepositDrops:FireServer()
            wait(.0001)
         end
   end
   
   function autoBuyMaxMonkeys()
         while _G.autoBuyMaxMonkeys== true do
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuyDropperMax:FireServer()
            wait(.0001)
         end
   end
   
   function autoMergeMonkeys()
         while _G.autoMergeMonkeys== true do
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.MergeDroppers:FireServer()
            wait(.0001)
         end
   end

   function autoBuySpeed()
         while _G.autoBuySpeed == true do
            local args = {
            [1] = 1
            }
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuySpeed:FireServer(unpack(args))
            wait(.0001)
         end
   end

   Tab:CreateSection("Auto Farms")

   Amount = 0
   local Toggle = Tab:CreateToggle({
      Name = "Auto Collect Bananas",
      CurrentValue = false,
      Flag = "Toggle1",
      Callback = function(Value)
         _G.autoCollectBananas = Value

         autoCollectBananas()
      end,
   })

   local Input = Tab:CreateInput({
      Name = "How Many Bananas To Be Collected",
      PlaceholderText = "Write Here",
      RemoveTextAfterFocusLost = false,
      Callback = function(Text)
         Amount = Text
      end,
   })

   local Toggle = Tab:CreateToggle({
      Name = "Auto Deposit Bananas",
      CurrentValue = false,
      Flag = "Toggle1",
      Callback = function(Value)
         _G.autoDepositBananas = Value

         autoDepositBananas()
      end,
   })

   Tab:CreateSection("Auto Upgrades")

   local Toggle = Tab:CreateToggle({
      Name = "Auto Buy Max Monkeys",
      CurrentValue = false,
      Flag = "Toggle1",
      Callback = function(Value)
         _G.autoBuyMaxMonkeys = Value

         autoBuyMaxMonkeys()
      end,
   })

   local Toggle = Tab:CreateToggle({
      Name = "Auto Merge Max Monkeys",
      CurrentValue = false,
      Flag = "Toggle1",
      Callback = function(Value)
         _G.autoMergeMonkeys = Value

         autoMergeMonkeys()
      end,
   })

   local Toggle = Tab:CreateToggle({
      Name = "Auto Buy Max Speed",
      CurrentValue = false,
      Flag = "Toggle1",
      Callback = function(Value)
         _G.autoBuySpeed = Value

         autoBuySpeed()
      end,
   })
elseif game.PlaceId == 11800876530 then
   print("Game Detected : +1 Blocks Every Second Loaded Successfully")

   getgenv().SecureMode = true
   local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

   local Window = lib:CreateWindow({
      Name = "+1 Blocks Every Second / Version 4.0",
      LoadingTitle = "Loading +1 Blocks Every Second",
      LoadingSubtitle = "By Joe",
      ConfigurationSaving = {
         Enabled = false,
         FolderName = nil,
         FileName = "Big Hub"
      },
      Discord = {
         Enabled = false,
         Invite = "ABCD",
         RememberJoins = false
      },
      KeySystem = true,
      KeySettings = {
         Title = "Scouse Starter Pack",
         Subtitle = "Key System",
         Note = "Go To Discord Channel To Find Key",
         FileName = "ScouseKey",
         SaveKey = true,
         GrabKeyFromSite = false,
         Key = TheMainKey
      }
   })

   local Tab = Window:CreateTab("Main")

   local Paragraph = Tab:CreateParagraph({Title = "READ ME THIS IS IMPORTANT", Content = "In certain roblox games it will block you from using these so if they dont work in some games dont complain to me i cannot be bothered to recode it to work."})

   Tab:CreateSection("Character Modifications")

   -- Services --
   local Players = game:GetService"Players"
   local TweenService = game:GetService"TweenService"

   -- User --
   local Player = Players.LocalPlayer
   local Character = Player.Character
   local Humanoid = Character.Humanoid

   -- Reset Sliders --
   

   -- Character Section --
   local Noclipp = Tab:CreateToggle({
      Name = "Noclip (Kinda Works)",
      CurrentValue = false,
      Flag = "Noclip", 
      Callback = function(state)
         local player = game.Players.LocalPlayer
         local character = player.Character

         while true do
            if state == true then
                  for _, v in pairs(character:GetDescendants()) do
                     pcall(function()
                        if v:IsA("BasePart") then
                           Character.UpperTorso.CanCollide = false
                           Character.LowerTorso.CanCollide = false
                           Character.Head.CanCollide = false
                           Character.HumanoidRootPart.CanCollide = false
                        end
                     end)
                  end
            end
                  if state == false then -- or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
                     for _, v in pairs(character:GetDescendants()) do  
                     state = false
                        pcall(function()
                              if v:IsA("BasePart") then
                              Character.UpperTorso.CanCollide = true
                              Character.LowerTorso.CanCollide = true
                              Character.Head.CanCollide = true
                              Character.HumanoidRootPart.CanCollide = true
                              end
                        end)
                     end
                  end

               game:GetService("RunService").Stepped:wait()
         end
      end,
   })

   game:GetService("UserInputService").JumpRequest:connect(function()
      if InfJump == true then
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
      end
   end)
   local InfiniteJump = Tab:CreateToggle({
      Name = "Infinite Jump",
      CurrentValue = false,
      Flag = "InfiniteJump", 
      Callback = function(state)
         InfJump = state
      end,
   })

   local Keybind = Tab:CreateKeybind({
      Name = "Fall Over",
      CurrentKeybind = "Q",
      HoldToInteract = false,
      Flag = "FallOver",
      Callback = function(Keybind)
         game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState(0)
      end,
   })

   local WalkSpeed = Tab:CreateSlider({
      Name = "Walk Speed",
      Range = {16, 300},
      Increment = 1,
      Suffix = "Walk Speed",
      CurrentValue = 16,
      Flag = "WalkSpeed",
      Callback = function(number)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
      end,
   })

   local JumpPower = Tab:CreateSlider({
      Name = "Jump Height",
      Range = {50, 500},
      Increment = 1,
      Suffix = "Jump Power",
      CurrentValue = 50,
      Flag = "JumpPower",
      Callback = function(number)
         Humanoid.JumpPower = number
      end,
   })

   local Camera = workspace.CurrentCamera
   local FovSlider = Tab:CreateSlider({
      Name = "Fov Slider",
      Range = {0, 240},
      Increment = 1,
      Suffix = "Fov Slider",
      CurrentValue = 70,
      Flag = "FovSlider",
      Callback = function(number)
         Camera.FieldOfView = number
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset All Sliders",
      Callback = function()
         FovSlider:Set(70)
         JumpPower:Set(50)
         WalkSpeed:Set(16)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Reset Character And Go Back To Position",
      Callback = function()
         PosX = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
         PosY = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
         PosZ = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
         print(PosX, PosY, PosZ)
         game.Players.LocalPlayer.Character.Humanoid.Health = 0
         wait(6)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PosX, PosY, PosZ)
      end,
   })

   Tab:CreateSection("Server Options")

   local Button = Tab:CreateButton({
      Name = "Rejoin Server",
      Callback = function()
         local ts = game:GetService("TeleportService")
         local p = game:GetService("Players").LocalPlayer
         ts:Teleport(game.PlaceId, p)
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Find A New Server",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/ServerHop.lua"))()
      end,
   })

   local Tab = Window:CreateTab("Scripts")

   Tab:CreateSection("Spy Scripts")

   local Button = Tab:CreateButton({
      Name = "Chat Spy",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Chat%20Spy.lua"))();
      end,
   })

   Tab:CreateSection("Admin GUI")

   local Button = Tab:CreateButton({
      Name = "Infinite Yield",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Fates Admin",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
      end,
   })

   Tab:CreateSection("Other Script Hubs")

   local Button = Tab:CreateButton({
      Name = "DomainX",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source'))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "FE Script Hubs",
      Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/UFE'))()
      end,
   })

   Tab:CreateSection("FE Scripts")

   local Button = Tab:CreateButton({
      Name = "Dances FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Griddy.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Walk On Walls FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/RunOnWalls.lua"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Giant FE",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/MIC-UP/main/SCRIPT"))()
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Snake FE",
      Callback = function()
         loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw'))()
      end,
   })

   local Tab = Window:CreateTab("+1 Block Every Second")

   -- Values
   _G.autoPlaceBlock = true
   _G.autoRebirth = true
   _G.autoClaimGift = true

   -- Functions
   function autoPlaceBlock()
           while _G.autoPlaceBlock== true do
               game:GetService("ReplicatedStorage").Remotes.PlaceBlock:FireServer()
               wait(.01)
           end
       end
   
   function autoRebirth()
       while _G.autoRebirth== true do
           local args = {
               [1] = "RebirthShop"
           }
           game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(unpack(args))
           wait(5)
       end
   end

   function autoClaimGift()
       while _G.autoClaimGift== true do
           game:GetService("ReplicatedStorage").Remotes.ClaimGift:InvokeServer()
           wait(.000000000000000000001)
       end
   end

   Tab:CreateSection("Auto Farm")

   local AutoPlaceBlocks = Tab:CreateToggle({
      Name = "Auto Place Blocks",
      CurrentValue = false,
      Flag = "APlaceBlocks", 
      Callback = function(state)
         _G.autoPlaceBlock = state
         autoPlaceBlock()
      end,
   })

   local AutoRebirth = Tab:CreateToggle({
      Name = "Auto Rebirth",
      CurrentValue = false,
      Flag = "ARebirth", 
      Callback = function(state)
         _G.autoRebirth = state
         autoRebirth()
      end,
   })

   local AutoClaimGift = Tab:CreateToggle({
      Name = "Auto Claim Gift",
      CurrentValue = false,
      Flag = "AClaimGift", 
      Callback = function(state)
         _G.autoClaimGift = state
         autoClaimGift()
      end,
   })

   Tab:CreateSection("Pet Options")

   local Button = Tab:CreateButton({
      Name = "Equip Best Pets",
      Callback = function()
         local args = {
            [1] = "Equip Best"
         }
         
         game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer(unpack(args))         
      end,
   })

   local Button = Tab:CreateButton({
      Name = "Unequip Pets",
      Callback = function()
         local args = {
            [1] = "Unequip All"
         }
         
         game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer(unpack(args))
      end,
   })
end