-- Made by legitimate0x1!

return function(Object, Number, ForceFieldCheck)
    local ObjectType = typeof(Object)
  
    if ObjectType ~= "Instance" then return "Expected " .. ObjectType .. ", got " .. ObjectType .. "." end

    if Object:IsA("Player") then
        Object = Object.Character
    end

    local Humanoid = Object:FindFirstChildOfClass("Humanoid")

    if Humanoid ~= nil and Number > 0 then
        if ForceFieldCheck then
            Humanoid:TakeDamage(Number)
        else
            Humanoid.Health -= Number
        end
    end
end
