-- Made by legitimate0x1!

local LogService = game:GetService("LogService")
local Messages = {}

LogService.MessageOut:Connect(function(Message, MessageType)
	local Callstack = ""
	
	if string.find(Message, "requiring asset") then
		local FirstIndex, LastIndex = string.find(Message, "callstack:")
		Callstack = string.sub(Message, LastIndex+2)
		
		if Callstack == "" then
			table.insert(Messages, Message)
      print(Message)
		end
	end
end)
