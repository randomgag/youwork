-- petdupe.lua (hosted on GitHub)

print("Pet Dupe Script Activated!")

local Players = game:GetService("Players")

local player = Players.LocalPlayer
local petsFolder = player:FindFirstChild("Pets")

if not petsFolder then
    warn("No Pets folder found!")
    return
end

for _, pet in pairs(petsFolder:GetChildren()) do
    local clone = pet:Clone()
    clone.Name = pet.Name .. "_Dupe"
    clone.Parent = petsFolder
    print("Duplicated pet: " .. clone.Name)
end

print("All pets duplicated!")
