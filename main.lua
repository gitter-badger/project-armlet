class = require "lib/30log" -- object-orientation library
flux = require "lib/flux" -- tweening library

Mixin = require "obj/mixin"
Entity = require "obj/entity"
Player = require "obj/player"
Spawner = require "obj/spawner"
Creep = require "obj/creep"

local player = Player:new(400, 300, 10, {255, 0, 0})

-- preload function to load any images/sounds or the like
function love.load()
end

-- update function called continuously
function love.update(dt)
  for e=#Entity.entities, 1, -1 do
    Entity.entities[e]:update(dt)
  end
end

-- draw function called 60 times/sec typically
function love.draw()
  for e=1, #Entity.entities do
    Entity.entities[e]:draw()
  end
end

-- quit function called when player exits game
function love.quit()
end
