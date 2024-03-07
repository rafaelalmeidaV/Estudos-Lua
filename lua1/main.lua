-- desenhando curvas
function love.load()
    love.graphics.setColor(0,0,1,1)
    love.graphics.setBackgroundColor(1,1,1,1)
end

function love.draw()
-- marcacao dos pontos base para a curva
-- 100,100
    love.graphics.line(95, 100, 105, 100)
    love.graphics.line(100, 95, 100, 105)
-- 150, 450
    love.graphics.line(145, 450, 155, 450)
    love.graphics.line(150, 445, 150, 455)
--250,300
    love.graphics.line(245, 300, 255, 300)
    love.graphics.line(250, 295, 250, 305)
--350, 450
    love.graphics.line(345, 450, 355, 450)
    love.graphics.line(350, 445, 350, 455)
--400,100
    love.graphics.line(395, 100, 405, 100)
    love.graphics.line(400, 95, 400, 105)
-- desenhando a curva
    curva = love.math.newBezierCurve(100, 100, 150, 450, 250, 300, 350, 450, 400, 100)
    love.graphics.line(curva:render())
end

