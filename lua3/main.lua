local passo = 1000
function love.load()
    personagem = {}
    personagem.x = 300
    personagem.y = 400
    personagem.lado = 100
    love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
    love.graphics.setColor(0, 0, 1, 1)
end
function love.update(dt)
    if love.keyboard.isDown("right") then
        personagem.x = personagem.x + passo * dt
    end
    if love.keyboard.isDown("left") then
        personagem.x = personagem.x - passo * dt
    end
    if love.keyboard.isDown("up") then
        personagem.y = personagem.y - passo * dt
    end
    if love.keyboard.isDown("down") then
        personagem.y = personagem.y + passo * dt
    end
end
function love.draw()
    love.graphics.rectangle("fill", personagem.x, personagem.y, personagem.lado, personagem.lado)
end