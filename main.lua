local l = 100
local a = 100
local x = (love.graphics.getWidth() - l) / 2
local y = (love.graphics.getHeight() - a) / 2

function love.load()
    love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
    love.graphics.setColor(0.75, 0.78, 0.78)
    love.graphics.setFont(love.graphics.newFont(20))
end

function love.draw()
    love.graphics.rectangle("fill", x, y, l, a)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("Hello World", x + 10, y + 10)
    
end