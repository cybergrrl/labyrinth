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

class Room
  def initialize(number, colour, description)
    @number = number
	@colour = colour
	@description = description
  end
  
  def colour
    return @colour
  end
  
  def description
    return @description
  end
  
  def message
    return "#{self.name}: #{@description}"
  end
  
  def name
    return "Aaron"
  end
  #self looks at the instance of the class. this is more commonly used than refering to instance variable. 
end

def hello
end

purple_room = Room.new(1, "purple", "this is the purple room.")
glitter_room = Room.new(2, "glitter", '''This is the glitter-room.''')
red_room = Room.new(3, "red", '''This is the red room.''')
pink_room = Room.new(4, "pink", '''This is the pink room.''')
blue_room = Room.new(5, "blue", '''This is the blue room.''')
dotty_room = Room.new(6, "polka dot", '''In this room everything is covered in polda dots.''')
gold_room = Room.new(7, "golden", '''This is a magnificent golden room.''')
white_room = Room.new(8, "white", '''This is the white room. Tis the season.''')
green_room = Room.new(9, "green", '''This is the infamous green room.''')

 
$map = [
  [purple_room, glitter_room, red_room], 
  [pink_room, blue_room, dotty_room], 
  [gold_room, white_room, green_room]
] # this is an array of arrays of rooms

$row = 2
$col = 1

def room
  $map[$row][$col] #this calls a position in an array of arrays called map
end


directions = ["east", "south", "west", "north"]
  
puts "Welcome to the christmas grotto! You are in the #{room.colour}room."
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