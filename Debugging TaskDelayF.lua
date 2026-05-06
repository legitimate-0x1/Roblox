-- Made by Sovf!

-- "task.delay" doesn't use "task.wait" to yield.

local task = task
local task_delay = task.delay
local task_wait = task.wait
local pairs = pairs

local Task_Clone = {}

for Index, Value in pairs(task) do
	Task_Clone[Index] = Value
end

Task_Clone.wait = function(...) print("Detected!") return task_wait(...) end

getfenv(task_delay).task = table.freeze(Task_Clone)

task_delay(0, function() end)
