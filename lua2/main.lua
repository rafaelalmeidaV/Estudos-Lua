p1 = {200, 250, 300, 50, 400, 150, 500, 50, 600, 250}
p2 = {200, 400, 250, 300, 300, 200, 350, 250, 400, 300, 450, 250, 500, 200, 550, 300, 600, 400}
p3 = {200, 550, 240, 450, 300, 350, 360, 400, 400, 450, 440, 400, 500, 350, 560, 450, 600, 550}

function love.load()
    love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
end

function love.draw()
    love.graphics.setColor(0, 0, 1, 1)
    love.graphics.line(p1)
    love.graphics.line(p2)
    love.graphics.line(p3)
end