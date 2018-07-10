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


directions = ["east", "south", "west", "north"]
puts "Welcome to the christmas grotto! You are in room #{room}. Which way would you like to turn? Type 'exit' any time you want to leave the grotto."


loop do
  print "Please enter #{directions.join ", "}: "
  x = gets.chomp.downcase

  if directions.include? x
    puts "You chose to go #{x}. Great."
	if x == "east"
	  room = 3
	  puts "Welcome to room number 3! Wonders await. Head on."
	elsif x == "north"
	  room = 5
	  puts "Oh! You are in room 5 now."
	else
	  x == "west"
	  room = 1
	  puts "This is the wonderful room 1."
	end
  elsif x.include? "exit"
    puts "Thank you. You are released from the grotto."
    exit
  else
    puts "You will have to choose one of the options."
  end

end