-- Made by Sovf!

local Module = {NilInstances = {}}

game.DescendantRemoving:Connect(function(Descendant)
	table.insert(Module, Descendant)
end)

game.DescendantAdded:Connect(function(Descendant)
	if Module.NilInstances[Descendant] then
		Module.NilInstances[Descendant] = nil
	end
end)

Module.GetNilInstances = function()
	return Module.NilInstances
end

Module.ClearNilInstancesTable = function()
	Module.NilInstances = {}
end

Module.GetNilInstance = function(Name, ClassName)
	local NilInstances = {}
	
	for Index, Value in pairs(Module.NilInstances) do
		if Value.Name == Name and Value.ClassName == ClassName then
			table.insert(NilInstances, Value)
		end
	end
	
	return NilInstances
end

for Index, Value in pairs(Module) do
	if type(Value) == "function" then
		Module[Index] = string.lower(Index)
	end
end

return Module
