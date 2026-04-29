-- Made by Sovf!

-- Slower, not for production!

local Nextf = ({next, {}})[1]

local CustomForeach = function(Tbl, Func)
	local Val, Val2 = Nextf(Tbl, nil)
	Func(Val, Val2)
	
	for Index = 1, #Tbl - 1 do
		Val, Val2 = Nextf(Tbl, Val)
		Func(Val, Val2)
	end
end
