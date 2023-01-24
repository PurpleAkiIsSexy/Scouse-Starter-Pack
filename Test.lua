if value3 == false then
		print("Noclip active")
		local Player = game:GetService("Players").LocalPlayer
		while game:GetService("RunService").Stepped:Wait() do
    			local Character = Player.Character or Player.CharacterAdded:Wait() 
    			Character.UpperTorso.CanCollide = true
    			Character.LowerTorso.CanCollide = true
    			Character.Head.CanCollide = true
    			Character.HumanoidRootPart.CanCollide = true
		end