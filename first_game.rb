puts "Ruby Game"
puts dashes = "----------"
name = "Jose"
health = 100
puts "#{name} is my name and my health is #{health}."
puts dashes
player1 = "Larry"
player2 = "curly"
player3 = "moe"
puts "Players: \n\t#{player1}\n\t#{player2}\n\t#{player3}"
player1.ljust(30, '.')
puts dashes
current_time = Time.new
formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
puts "The game started on #{formatted_time}"
puts dashes
