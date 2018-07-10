puts 
puts "You find yourself in a dark forest. You look around. There are snow-covered trees all around you. An icy wind is howling in their tops. You shiver. You look down and realise you are in your pyjamas! You will surely freeze if you cannot find your way home..."
puts
puts "There is a little hut in front of you and warm light shines out the windows. The door is closed. You knock but no one answers. What do you want to do? Type 'enter' if you want to go in."
puts "What do you want to do? "

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

#define array of arrays called map:
@map = [
  [1, 2, 3], 
  [4, 5, 6], 
  [7, 8, 9]
]

@row = 2
@col = 0

#call a position in the array of arrays called map:
def room
  @map[@row][@col]
end

directions = ["east", "south", "west", "north"]

def get_jacket
  @jacket = true
end

#make a hash that associates each room with a colour, then refer to the rooms not by number but by colour in the user interface
#write a description for each room in the map that comes up when player first enters a room or when the player enters a certain command like 'look' or 'info' while in the room
  
puts
puts "Welcome to the christmas grotto! You are in room #{room}. Which way would you like to turn?"
puts "Type 'exit' any time you want to leave the grotto. This will take you straight through the chimney to the outside world."

def room_description
  case room
  when 1
    puts "Wow! This room is purple. Like, everything here is purple, including the doorknobs! Pretty if a little disturbing. And what is that smell? Damson and gin??"
  when 2
    puts "Gee, where did you get now? Your eyes sting. Everything around you glitters in metallilc shades. It is like the Snow Queen has burped up her breakfast! Pretty though. There are bell sounds from a distance and snowflakes dance around you but they are not cold."
	get_jacket
  when 3
    puts "Wow! All is red and velvet in here! Like the home of a lovesick puppy. You want to curl up and cuddle the soft-padded furniture."
  when 4
    puts "What's that? A big fellow in a red coat. With a white beard! It must be Santa! He turns towards you and says:"
	if @jacket == true
      puts
	  puts "'Welcome to the Christmas grotto! However did you get here? This is no place for a little person like you. You should be in bed! Let me help you. Here is a warm coat to protect you on your way. Now up through the chimney you go and my elf will take you right back to your cosy bed. Ho ho ho!'"
	  puts
	  puts "You feel yourself wrapped in a warm coat and the next thing you know is you are going up up up and then flying across the dark night sky, the light of the hut getting smaller and smaller. Then you find yourself in your little warm bed in your room. The moon shines into the window. Has it all been a dream? But where did that red, warm coat come from?" 
	  exit
    else
      puts "You do not have the jacket. Keep looking"
    end	  
	

  when 5
    puts "Blue is the warmest colour? Certainly not here! The temperature dropped by a few degrees and you shiver while you make your way into this abundance of blue and indigo shades."
  when 6
    puts "This looks cheerful. There is no conceivable colour scheme here but everything is dotty! Polka dots all around and there is an accordeon playing very German-sounding tunes that make you want to gallop across the dotted floor."
  when 7
    puts "What a pretty room. All the furnishing is green. It does not resemble a meadow in summer as much as a Tannenbaum. There is the distinct smell of pine needles and sandle wood in the air."
  when 8
    puts "Brrrr. It is chilly in here. Or is it just the fact that all is covered in an inch of snow in here? If you were not in your thin nightwear, you  might enjoy this more."
  when 9
    puts "You hear fanfares as you enter the room. A room which looks truly magnificent! Everything in here is made of pure gold. Ouch! Including the carpet and the 'soft' seats, as you discover. Maybe move on from here."
  end
end

loop do
  print "Please enter #{directions.join ", "}: "
  x = gets.chomp.downcase

  if directions.include? x
    puts "You chose to go #{x}. Great!"
	
	if x == "east"
	  if @col < 2   
	    @col += 1
        room_description
	  else 
	    puts "There is no door there."
	  end
	  
	elsif x == "north"
	  if @row > 0
	    @row -= 1
	    room_description
	  else
	    puts "Sorry, no door in that wall."
	  end
	
	elsif x == "west"
	  if @col > 0
	    @col -= 1
	    room_description
	else 
	  puts "There is no door here!"
	end
		
	else
	  x == "south"
	  if @row < 2
		@row += 1
		room_description
      else 
		puts "Nope. No door."
      end
	end
	
  elsif x.include? "exit"
    puts "Thank you. You are released from the grotto. Since you are inappropirately dressed for the cold weather, you will probably die though."
    exit
	  
  else
    puts "You will have to choose one of the options."
	  
  end
end