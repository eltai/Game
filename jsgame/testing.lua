local button = script.Parent
local white = Color3.new(1, 1, 1)
local green = Color3.new(0, 1, 0)
local chest = game.Workspace:GetChildren()
 
local toggle = true
button.MouseButton1Click:Connect(function()
    if button.BackgroundColor3 == white then
        button.BackgroundColor3 = green
        if toggle then
            for i,v in pairs(chest) do
                if v.Name == "Chest" then
                    local main = Instance.new("BillboardGui")
                    main.Parent = v
                    main.AlwaysOnTop = true
                    main.Active = true
                    main.Enabled = true
                    main.ResetOnSpawn = true 
                    main.Size = UDim2.new(0, 200,0, 50)
                    main.Name = "Main"
                    
                    local text = Instance.new("TextLabel")
                    text.Parent = main
                    text.Text = "FoundChest"
                    text.Size =UDim2.new(0, 200,0, 50)
                    text.Name = "Chest"
                    text.Visible = true
                    text.BackgroundTransparency = 1
                    text.TextStrokeColor3 = Color3.new(0, 1, 0)
                    text.TextColor3 = Color3.new(0, 0, 0)
                    text.TextSize = 15
                    text.TextStrokeTransparency = 0 
            end
        end
    end 
    else
        toggle = false
        button.BackgroundColor3 = white
        for i,v in pairs(chest) do
            if v.Name == "Chest" then 
                v.Main:Destroy()
                
        end
     end
        toggle = true
    end
end)
