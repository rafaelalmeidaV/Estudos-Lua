local personagem = {}
function love.load()
    personagem.img = love.graphics.newImage("bola.png")
    personagem.larg = personagem.img:getWidth()
    personagem.alt = personagem.img:getHeight()
    personagem.angulo = 0
    l_max = love.graphics.getWidth()
    a_max = love.graphics.getHeight()
    love.graphics.setBackgroundColor(1, 1, 1, 1)
end
function love.update(dt)
    if love.keyboard.isDown("d") then
        personagem.angulo = personagem.angulo + math.pi * dt
    end
    if love.keyboard.isDown("a") then
        personagem.angulo = personagem.angulo - math.pi * dt
    end
end

function love.draw()
    px = (l_max - personagem.larg) / 2
    py = (a_max - personagem.alt ) / 2
    cx = personagem.larg / 2
    cy = personagem.alt / 2
    love.graphics.draw(personagem.img, px, py, personagem.angulo, 1, 1, cx, cy)
end