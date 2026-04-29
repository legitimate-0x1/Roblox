-- Made by Sovf!

local next = next

local CustomForeach = function(Tbl, Func)
	for Index, Value in next, Tbl do
		Func(Index, Value)
	end
end
