local meta = {}

local function createPoint(x, y)
    return setmetatable({x = x, y = y}, meta)
end

meta.__add = function(a, b)
    return createPoint(a.x + b.x, a.y + b.y)
end

meta.__sub = function(a, b)
    return createPoint(a.x - b.x, a.y - b.y)
end

local mousePoint = createPoint(300, 720)
local telaPoint = createPoint(1080, 720)

local result = mousePoint + telaPoint
print(string.format("x: %d y: %d", result.x, result.y))