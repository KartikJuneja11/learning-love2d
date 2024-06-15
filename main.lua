local height = love.graphics.getHeight()
local width = love.graphics.getWidth()
currentX = 0

function love.draw()
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.line(0, 0, 100, 100)

    love.graphics.setColor(0, 0, 1, 1)
    love.graphics.line(0, height / 2, width, height / 2)

    love.graphics.setColor(0, 1, 0, 0.2)
    love.graphics.polygon("fill", 
        {currentX + 0, 100, currentX + 200, 100, 
        currentX + 200, 300, currentX + 0, 300}
    )
end

function love.update(dt)
    if (currentX < width) then
        currentX = currentX + 100 * dt
    else
        currentX = -200
    end
end

function love.load()
    love.graphics.setBackgroundColor(255, 255, 255, 255)
end

function love.quit()
    
end