-- Made by legitimate0x1!

return function(ClassName, ParentAfter, ...)
    local NewClass = Instance.new(ClassName)
    local Arguments = {}

    for Index, Value in pairs(Arguments)
        if ParentAfter and Index == "Parent" then
            continue
        end

        NewClass[Index] = Value
    end

    NewClass.Parent = Arguments.Parent
end
