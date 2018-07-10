puts 
puts "You find yourself in a dark forest. You look around. There are snow-covered trees all around you. An icy wind is howling in their tops. You shiver. You look down and realise you are in your pyjamas! You will surely freeze if you cannot find your way home..."
puts
puts "There is a little hut in front of you and warm light shines out the windows. The door is closed. You knock but no one answers. What do you want to do? Type 'enter' if you want to go in."

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
puts "Welcome to the christmas grotto! As you turn around, you realise there is no door. How did you get in? Is this magic? What to do next? You would like to find your way home. You have to find another way to go. Which way would you like to turn?"
puts "Type 'exit' any time you want to leave the grotto. This will take you straight through the chimney to the outside world. But remember: There is nothing but potentially hostile wilderness out there!"

def room_description
  case room
  
  when 1
     puts "Oh this room is certainly cosy! There is a smell of mulled wine in the air and the carpet is wooly, warm and red. The furniture is coverd in red velvet and a a fire is crackling in the open fireplace."
	 puts "But what's that? A big fellow in a red coat. He turns around and looks at you across his spectacles. You are impressed with his big, white beard! No hipster has ever sported anything as magnificent! It must be Santa! He hickups, puts a wine glass down, gets up and says to you:"
	if @jacket == true
      puts
	  puts "'Welcome to the Christmas grotto! However did you get here? This is no place for a little person like you. You should be in bed, dreaming of a white Christmas! Let me help you. I can see you are dressed for a little flight through the winter night! Hickup. Excuse me. Now up through the chimney you go and my elf will take you right back to your cosy bed. Ho ho ho!'"
	  puts
	  puts "The next thing you know is you are going up up up and then flying across the dark night sky, the light of the hut getting smaller and smaller. Then you find yourself in your little warm bed in your room with central heating and not a single snowflake inside. The moon shines into the window. Has it all been a dream? But where did that red, warm coat come from?" 
	  exit
    else
      puts "'Welcome to the Christmas grotto! However did you get here? This is no place for a little person like you. You should be in bed, dreaming of a white Christmas! I could send you home but you do not have a jacket. I cannot send you home dressed like this, you'd catch a cold or worse. Keep looking, there is a warm coat just your size around here somewhere. Look out for anything red. Then come back to me.'"
    end
	  
  when 2
    puts "Gee, where did you get now? Your eyes sting. Everything around you glitters in metallilc shades. It is like the Snow Queen has burped up her breakfast! Pretty though. There are bell sounds from a distance and snowflakes dance around you but they are not cold. But not a place to catch up on some sleep, tinsel covers all the surfaces and has already gotten into your slippers. Let's keep exploring!"
  
  when 3
    puts "Wow! All is red and velvet in here! Like the home of a lovesick puppy. You want to curl up and cuddle the soft-padded furniture. Instead your eyes come to rest on a warm, padded, red winter coat hanging on a hook by the door, it has even got a hood! You say to yourself: 'This will suit me just fine if I have to go back out in the cold. But surely it must belong to someone who will miss it?'"
	
    loop do
	  puts
	  print "Do you want to take the coat? Type 'yes' or 'no' "
	  x = gets.chomp.downcase
	  if x == 'no'
	    puts "It is better not to steal in a strange place. Even if it might be necessary for survival. You head on to find your way out."
		break
	  elsif x == 'yes'
	    get_jacket
	    puts "This may belong to someone. But you are in dire straights. You need to find your way home. And preferably alive. You grab the jacket and wrap it safely around yourself. Now head on and find your way home."
		break
	  else
	    puts "You need to make a decision."
	  end
	end
	
  when 4
    puts "Blue is the warmest colour? Certainly not here! The temperature dropped by a few degrees and you shiver while you make your way into this abundance of blue and indigo shades. Chris Isaak is singing about a blue Christmas and it makes you think of home. You need to get out of here otherwise you will become all blue yourself, too."
  
  when 5
    puts "This looks cheerful. There is no conceivable colour scheme here but everything is dotty! Polka dots all around and there is an accordeon playing very German-sounding tunes that make you want to gallop across the dotted floor."
  
  when 6
    puts "What a pretty room. All the furnishing is green. It does not resemble a meadow in summer as much as a Tannenbaum. There is the distinct smell of pine needles and sandle wood in the air. And one of the doors in here looks different from all the others you have seen so far, particularly solid. There is a heavy padlock to keep people locked in (or out?) and a warning sign that reads: 'BEWARE OF THE OUTSIDE! KEEP LOCKED AT ALL TIMES!' Next to the door there is a rusty nail in the wall and a key is dangling from it. It looks about right for the padlock."
	loop do
	  puts
	  print "Do you want to try and use the key despite the warning sign? Yes or no? "
	  x = gets.chomp.downcase
	  if x == "no"
	    puts
		puts "This does look dangerous. Better stay indoors where it is warm and cosy. And there is always the chance to find some egg nog nogging about. Let's check out one of the safer doors."
		break
	  elsif x == "yes"
	    puts
		puts "Oh heck, this has become too strange for you! Damn this christmas humbug! Not even egg nog could you find here! Let's get home already!"
		puts
		puts "You take the key and open the padlock. The door is pulled open with force by a sudden gale. Snow blows in. The christmas tree in the corner tumbles over, baubles break. It is dark outside. But you can distinctly see a tall figure looming just in the dark of the trees a few yards away. Creepy yellow eyes stare at you! Quickly you try to shut the door again. But it is too late. In a few leaps the figure is upon you. Dark green coat, long, grey, wild beard. Those yellow eyes. And are these fangs?! It must be Krampus, Santa's evil counterpart! Oh no! He is known to eat children! Especially naughty ones that open forbidden doors!"
		puts "Too late for running now. There is no escape. You feel cold hands grab your throat, then you don't feel much any more."
		puts
		puts "What a sad end to a Christmas story. I hope you were carrying ID somewhere in that flimsy night gown of yours. Or your family will never know where you disappeared to just before Christmas..."
		exit
	  else 
	    print "You have to make a decision. Open the door, yes or no? "
	  end
	end
  
  when 7
    puts "Wow! This room is purple. Like, everything here is purple, including the doorknobs! Pretty if a little disturbing. And what is that smell? Damson and gin??"

  when 8
    puts "You hear fanfares as you enter the room. A room which looks truly magnificent! Everything in here is made of pure gold. Ouch! Including the carpet and the 'soft' seats, as you discover. Maybe move on from here."

  when 9
    puts "Brrrr. It is chilly in here. Or is it just the fact that all is covered in an inch of snow in here? If you were not in your thin nightwear, you  might enjoy this more."

  end
end

loop do
  puts
  print "Where would you like to go? Please enter #{directions.join ", "}: "
  x = gets.chomp.downcase

  if directions.include? x
    puts "You chose to go #{x}. Let's see!"
	
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