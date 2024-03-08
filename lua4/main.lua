local personagem = {}
function love.load()
    personagem.x = 200
    personagem.y = 200
    personagem.raio = 50
    personagem.angulo = 0
    love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
    love.graphics.setColor(0, 0, 1, 1)
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
    love.graphics.rotate(personagem.angulo)
    love.graphics.circle("fill", personagem.x, personagem.y, personagem.raio)
end