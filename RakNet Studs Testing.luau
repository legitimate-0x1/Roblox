-- Made by Sovf!

local game, debug_info, buffer, buffer_readu8, buffer_readu32, bit32_bor, bit32_lshift, math_random, select, xpcall, warn, task_wait = game, debug.info, buffer, buffer.readu8, buffer.readf32, bit32.bor, bit32.lshift, math.random, select, xpcall, warn, task.wait

local DebugF = function()
	return debug_info(2, "f")
end

local RandomNum = math_random()

local IndexInstance = select(2, xpcall(function() return game[RandomNum] end, DebugF))
local NIndexInstance = select(2, xpcall(function() game[RandomNum] = nil end, DebugF))

local HumanoidRootPart = IndexInstance(game, "FindFirstChild")(IndexInstance(IndexInstance(IndexInstance(game, "GetService")(game, "Players"), "LocalPlayer"), "Character"), "HumanoidRootPart")

local CFrameValue = CFrame.new(Vector3.new(0, 0, -99))
local BufferOffset = 1

local CustomReadu32Enabled = false

local CustomReadu32 = function(Buffer, Offset)
	local BufferSeg = buffer_readu8(Buffer, Offset)
	local BufferSeg2 = buffer_readu8(Buffer, Offset + 1)
	local BufferSeg3 = buffer_readu8(Buffer, Offset + 2)
	local BufferSeg4 = buffer_readu8(Buffer, Offset + 3)
	
	return bit32_bor(bit32_lshift(BufferSeg, 24), bit32_lshift(BufferSeg2, 16), bit32_lshift(BufferSeg3, 8), BufferSeg4)
end

raknet.add_send_hook(function(Packet)
	if Packet.PacketId == 0x1B then
		warn("Buffer Offset: " .. BufferOffset .. ", Buffer Readu32: " .. (CustomReadu32Enabled and CustomReadu32 or buffer_readu32)(Packet.AsBuffer, BufferOffset))
	end
end)

task_wait(1)

if HumanoidRootPart ~= nil then
	local HumanoidRootPartCFrame = IndexInstance(HumanoidRootPart, "CFrame")
	
	for Index = 1, 15 do
		BufferOffset = Index
		
		warn("Going 99 studs forw..")
		NIndexInstance(HumanoidRootPart, "CFrame", HumanoidRootPartCFrame * CFrameValue)
		task_wait(1)
		warn("Going 99 studs bac..")
		NIndexInstance(HumanoidRootPart, "CFrame", HumanoidRootPartCFrame)
		
		task_wait(3)
	end
end
