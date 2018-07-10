=begin
puts "You find yourself in a dark forest. You look around. There are snow-covered trees all around you. An icy wind is howling in their tops."
puts "There is a little hut in front of you and warm light shines out the windows. The door is closed. You knock but no one answers. What do you want to do? Type 'enter' if you want to go in. Type 'look' if you want to look around. Type 'take' if you see something you would like to put in your inventory. Try other commands to see what you can do."

loop do
  print "What would you like to do? "
  x = gets.chomp.downcase
  
  if x.include? "look"
    puts "Your surroundings have not changed. Trees, snow, wind, hut."
  elsif x.include? "enter"
    break
  else
    puts "This action does not work in this setting."
  end
  
end
=end

$map = [
  [1, 2, 3], 
  [4, 5, 6], 
  [7, 8, 9]
]

$row = 2
$col = 1

def room
  $map[$row][$col]
end

#make a hash that associates each room with a colour, then refer to the rooms not by number but by colour in the user interface


directions = ["east", "south", "west", "north"]
  
puts "Welcome to the christmas grotto! You are in room #{room}. Which way would you like to turn? Type 'exit' any time you want to leave the grotto. This will take you straight through the chimney to the outside world."


loop do
  print "Please enter #{directions.join ", "}: "
  x = gets.chomp.downcase

  if directions.include? x
    puts "You chose to go #{x}. Great!"
	
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