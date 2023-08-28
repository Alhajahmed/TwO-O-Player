require './player.rb'

player = Player.new("Ahmed")
puts "Player name: #{player.name}"
puts "Initial lives: #{player.lives}"
puts "Is alive? #{player.alive?}"
player.lose_life!
puts "Lives after losing one: #{player.lives}"
puts "Is alive after losing one? #{player.alive?}"
puts "Score: #{player.score}"