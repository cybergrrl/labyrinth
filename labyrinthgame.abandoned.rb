=begin
puts "You find yourself in a dark forest. It is snowy and cold. There is a little house in front of you. The door is closed. What do you want to do? Type 'enter' if you want to go in. Type 'look' to look around yourself."

loop do
  print "What would you like to do? "
  x = gets.chomp.downcase
  
  if x.include? "look"
    puts "Your surroundings have not changed. Trees, snow, wind, house."
  elsif x.include? "enter"
    break
  else
    puts "This action does not work in this setting."
  end
  
end
=end

 
$map = [
  [{:number => 1, :colour => "purple"}, {:number => 2, colour: "glitter"}, {:number => 3, :colour => "red"}], 
  [{:number => 4, :colour => "pink"}, {:number => 5, colour: "blue"}, {:number => 6, :colour => "polka dots"}], 
  [{:number => 7, :colour => "gold"}, {:number => 8, colour: "white"}, {:number => 9, :colour => "green"}]
] # this is an array of hashes

$row = 2
$col = 1

def room
  $map[$row][$col] #this calls a position in an array of arrays called map
end

=begin
$map[0][0] = 'purple room'
$map[0][1] = 'glitter room'
$map[2][0] = 'gold room'
$map[2][1] = 'WHITE room'
=end

#make a hash that associates each room with a colour, then refer to the rooms not by number but by colour in the user interface
#write a description for each room in the map that comes up when player enters a certain command like 'look' or 'info'

directions = ["east", "south", "west", "north"]
  
puts "Welcome to the christmas grotto! You are in the #{room[:colour]}room."
puts
puts "You navigate between rooms by typing the four directions 'north', 'east', 'south', or 'west'. As long as there is a door there anyway. You are currently at the south side of the building. You turn around but there is no door there. No way to exit through the front door? This must be magic! Or a nightmare. Don't despair! Type 'exit' any time you want to leave the grotto. This will take you straight through the chimney to the outside world."

loop do
  print "Please enter #{directions.join ", "}: "
  x = gets.chomp.downcase

  if directions.include? x
    puts "You chose to go #{x}. Let's see..."
	
	if x == "east"
	  if $col < 2   
	    $col += 1
        puts "Welcome to room number #{room}! Wonders await. Head on."
	  else 
	    puts "There is no door there."
	  end
	  
	elsif x == "north"
	  if $row > 0
	    $row -= 1
	    puts "Oh! You are in room #{room} now."
	  else
	    puts "Sorry, no door in that wall."
	  end
	elsif x == "west"
	  $col -= 1
	  puts "This is the wonderful room #{room}."
	else
	  x == "south"
	  $row += 1
	  puts "You are in the mysterious room number #{room}."
	end
  elsif x.include? "exit"
    puts "Thank you. You are released from the grotto. Since you are inappropirately dressed for the cold weather, you will probably die though."
    exit
  else
    puts "You will have to choose one of the options."
  end

end