function love.draw()
    love.graphics.print("Hello World", 100, 100)
end

function love.update(dt)
    
end

function love.load()
    local newIcon = love.image.newImageData("funny.jpeg")
    love.window.setIcon(newIcon)
end

function love.quit()
    
end