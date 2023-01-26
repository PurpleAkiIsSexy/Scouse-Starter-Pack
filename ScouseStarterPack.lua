if game.PlaceId == 11400511154 then
    print("Game Detected : Monkey Tycoon 🐒 Loaded Successfully")

    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

    local UI = Material.Load({
        Title = "Scouse Starter Pack / Monkey Tycoon 🐒 / Version 1.0 / Made By Joe",
        Style = 1,
        SizeX = 500,
        SizeY = 300,
        Theme = "Dark",
    })

    local Page7 = UI.New({
        Title = "Main"
    })

    local Page8 = UI.New({
        Title = "Auto Farm"
    })

    local Page9 = UI.New({
        Title = "Upgrades"
    })

    local Page1 = UI.New({
        Title = "Player Options"
    })

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
                    [1] = value2
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

    Page1.Button({
        Text = "CUMMING SOON BABES ;) THIS TAKES A LOT OF WORK",
        Callback = function()
        end,        
    })

    Page1.Slider({
        Text = "Enjoy Running Fast Fatty",
        Callback = function(value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end,
        Min = 16,
        Max = 100,
        Def = 0
    })

    Page1.Button({
        Text = "WATCH OUT THESE COULD BE DETECTED IN MOST GAMES",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "Version 1.0",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "IF SCRIPT NO LONGER WORK TELL ME",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "ANY SUGGESTIONS LET ME KNOW",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "Enjoy Using :)",
        Callback = function()
        end,        
    })

    Page8.Toggle({
        Text = "Auto Collect Bananas",
        Callback = function(value2)
            _G.autoCollectBananas = value2
            
            autoCollectBananas()
        end,
        Enabled = false
    })

    Page8.Slider({
        Text = "How Many You Want To Collect At A Time",
        Callback = function(value)
            value2 = value
            return value2
        end,
        Min = 0,
        Max = 100000,
        Def = 0
    })

    Page8.Toggle({
        Text = "Auto Deposit Bananas",
        Callback = function(value)
            _G.autoDepositBananas = value
            
            autoDepositBananas()
        end,
        Enabled = false
    })

    Page9.Toggle({
        Text = "Auto Buy Max Monkeys",
        Callback = function(value)
            _G.autoBuyMaxMonkeys = value
            
            autoBuyMaxMonkeys()
        end,
        Enabled = false
    })

    Page9.Toggle({
        Text = "Auto Merge Max Monkeys",
        Callback = function(value)
            _G.autoMergeMonkeys = value
            
            autoMergeMonkeys()
        end,
        Enabled = false
    })

    Page9.Toggle({
        Text = "Auto Buy Max Speed",
        Callback = function(value)
            _G.autoBuySpeed = value
            
            autoBuySpeed()
        end,
        Enabled = false
    })
elseif game.PlaceId == 6884319169 then
    print("Game Detected : MIC UP 🔊 Loaded Successfully")

    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

    local UI = Material.Load({
        Title = "Scouse Starter Pack / MIC UP 🔊 / Version 1.0 / Made By Joe",
        Style = 1,
        SizeX = 500,
        SizeY = 300,
        Theme = "Dark",
    })

    local Page7 = UI.New({
        Title = "Main"
    })

    local Page1 = UI.New({
        Title = "Player Options"
    })

    local Page3 = UI.New({
        Title = "Script Options"
    })

    local Page2 = UI.New({
        Title = "Dances And Tha"
    })

    local Page4 = UI.New({
        Title = "Teleports"
    })

    -- Values
    

    -- Functions




    Page1.Button({
        Text = "CUMMING SOON BABES ;) THIS TAKES A LOT OF WORK",
        Callback = function()
        end,        
    })

    Page1.Slider({
        Text = "Enjoy Running Fast Fatty",
        Callback = function(value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end,
        Min = 16,
        Max = 100,
        Def = 0
    })

    Page1.Button({
        Text = "WATCH OUT THESE COULD BE DETECTED IN MOST GAMES",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "Version 1.0",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "IF SCRIPT NO LONGER WORK TELL ME",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "ANY SUGGESTIONS LET ME KNOW",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "Enjoy Using :)",
        Callback = function()
        end,        
    })

    Page2.Button({
        Text = "Fortnite Emotes",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Griddy.lua"))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "I dont give 2 fucks on how u dont know how to use it just press buttons it will work and reset once done"            
                })
            end,
        }         
    })

    Page2.Button({
        Text = "Become A Lamppost",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/MIC-UP/main/SCRIPT"))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "I dont give 2 fucks on how u dont know how to use it just press buttons it will work and reset once done"            
                })
            end,
        }         
    })

    Page2.Button({
        Text = "Im A Snake (FE)",
        Callback = function()
        loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw'))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "I dont give 2 fucks on how u dont know how to use it just press buttons it will work and reset once done"            
                })
            end,
        }         
    })

    Page3.Button({
        Text = "Infinite Yield",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Stop Reading This U Punny Get The Chef Out And Stab Some Kids"            
                })
            end,
        }         
    })
    
    Page3.Button({
        Text = "Mattys Admin Commands",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Stop Reading This U Punny Get The Chef Out And Stab Some Kids"            
                })
            end,
        }         
    })
    
    Page3.Button({
        Text = "DomainX",
        Callback = function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source'))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Stop Reading This U Punny Get The Chef Out And Stab Some Kids"            
                })
            end,
        }         
    })
    
    Page3.Button({
        Text = "Be A Nonce And See Peoples Messages",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Chat%20Spy.lua"))();
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Mate stop being a nonce im getting you on the sex offenders list"            
                })
            end,
        }         
    })

        
    Page4.Button({
        Text = "Tools",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-52.64019012451172, 5.136971950531006, -60.52338790893555)
        end,        
    })

    Page4.Button({
        Text = "Donut Shop",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77.43598175048828, 3.3224036693573, -80.3628921508789)
        end,        
    })

    Page4.Button({
        Text = "Bathroom",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-73.54572296142578, 5.235297679901123, 91.76410675048828)
        end,        
    })

    Page4.Button({
        Text = "Slide",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.912853240966797, 284.5441589355469, 188.19432067871094)
        end,        
    })

    Page4.Button({
        Text = "Top Top Of Tower",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(57.1019401550293, 313.44952392578125, 226.19265747070312)
        end,        
    })

    Page4.Button({
        Text = "Stage",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.93522644042969, 10.222357749938965, 241.90924072265625)
        end,        
    })

    Page4.Button({
        Text = "Footy",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(191.52305603027344, 5.136989116668701, 196.5418701171875)
        end,        
    })

    Page4.Button({
        Text = "Stands",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.6304931640625, 5.136971950531006, 74.53134155273438)
        end,        
    })

    Page4.Button({
        Text = "Chill Circle",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(218.3397979736328, 5.675833225250244, -10.302614212036133)
        end,        
    })

    Page4.Button({
        Text = "Private Rooms",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(220.93231201171875, 5.136974334716797, 29.615930557250977)
        end,        
    })

else
    print("No Game Detected Loading Normal Script")
    
    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

    local UI = Material.Load({
        Title = "Scouse Starter Pack / No Game / Version 1.0 / Made By Joe",
        Style = 1,
        SizeX = 500,
        SizeY = 300,
        Theme = "Dark",
    })

    local Page7 = UI.New({
        Title = "Main"
    })

    local Page1 = UI.New({
        Title = "Player Options"
    })

    local Page3 = UI.New({
        Title = "Script Options"
    })

    local Page2 = UI.New({
        Title = "Dances And Tha"
    })

    -- Values
    

    -- Functions




    Page1.Button({
        Text = "CUMMING SOON BABES ;) THIS TAKES A LOT OF WORK",
        Callback = function()
        end,        
    })

    Page1.Slider({
        Text = "Enjoy Running Fast Fatty",
        Callback = function(value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end,
        Min = 16,
        Max = 100,
        Def = 0
    })

    Page1.Button({
        Text = "WATCH OUT THESE COULD BE DETECTED IN MOST GAMES",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "Version 1.0",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "IF SCRIPT NO LONGER WORK TELL ME",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "ANY SUGGESTIONS LET ME KNOW",
        Callback = function()
        end,        
    })

    Page7.Button({
        Text = "Enjoy Using :)",
        Callback = function()
        end,        
    })

    Page2.Button({
        Text = "Fortnite Emotes",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Griddy.lua"))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "I dont give 2 fucks on how u dont know how to use it just press buttons it will work and reset once done"            
                })
            end,
        }         
    })

    Page2.Button({
        Text = "Become A Lamppost",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NocturneMoDz/MIC-UP/main/SCRIPT"))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "I dont give 2 fucks on how u dont know how to use it just press buttons it will work and reset once done"            
                })
            end,
        }         
    })

    Page2.Button({
        Text = "Im A Snake (FE)",
        Callback = function()
        loadstring(game:HttpGet('https://pastefy.ga/tWBTcE4R/raw'))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "I dont give 2 fucks on how u dont know how to use it just press buttons it will work and reset once done"            
                })
            end,
        }         
    })

    Page3.Button({
        Text = "Infinite Yield",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Stop Reading This U Punny Get The Chef Out And Stab Some Kids"            
                })
            end,
        }         
    })
    
    Page3.Button({
        Text = "Mattys Admin Commands",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Stop Reading This U Punny Get The Chef Out And Stab Some Kids"            
                })
            end,
        }         
    })
    
    Page3.Button({
        Text = "DomainX",
        Callback = function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source'))()
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Stop Reading This U Punny Get The Chef Out And Stab Some Kids"            
                })
            end,
        }         
    })
    
    Page3.Button({
        Text = "Be A Nonce And See Peoples Messages",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/PurpleAkiIsSexy/Scouse-Starter-Pack/main/Chat%20Spy.lua"))();
        end,
        Menu = {
            ReadMe = function(self)
                UI.Banner({
                    Text = "Mate stop being a nonce im getting you on the sex offenders list"            
                })
            end,
        }         
    })
end

