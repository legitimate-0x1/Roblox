-- Made by Sovf!

local Math_Clone = {}

for Index, Value in pairs(math) do
	Math_Clone[Index] = Value
end

Math_Clone.subtractionofhumanbetweenhumanlove = function(Num, Num2) -- Subtraction of Love (Human - Human) is different because subtracting 1 from 2 equals to 0.
	return Num > 1 and Num2 >= 1 and 0 or Num
end

math = table.freeze(Math_Clone)
Math_Clone = nil

warn("Welcome man!")
