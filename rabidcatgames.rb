store = "RABID CAT GAMES"
thanks= "Thanks for shopping at Rabid Cat Games!"
ps3 = 45
ps4 = 60
xbox360 = 40
xboxOne = 55
games = ["PlayStation3", "PlayStation4", "Xbox360", "Xbox One"]
receipt = "Printing Receipt..."


puts "Welcome to Rabid Cat Games!"
puts "Which games would you like to purchase?"
game = games.sample
puts game
print "How many games do you need? "
numgames = gets.chomp

if game == "PlayStation3"
	price = numgames.to_i * ps3
	print "Your total comes to $"
	puts price.to_s + "\n\n"
#Receipt
puts receipt
puts store + "\n\n" #makes spaces so it looks nice, yo!
numgames.to_i.times do
	print game 
	print "---"
	puts ps3
		end
	print "TOTAL: $"
	puts price.to_s + "\n\n"
	puts thanks

elsif game == "PlayStation4"
price = numgames.to_i * ps4
	print "Your total comes to $"
	puts price.to_s + "\n\n"
#Receipt
puts receipt
puts store + "\n\n" 
numgames.to_i.times do
	print game 
	print "---"
	puts ps4
		end
	print "TOTAL: $"
	puts price.to_s + "\n\n"
	puts thanks
	

elsif game == "Xbox360"
price = numgames.to_i * xbox360
	print "Your total comes to $"
	puts price.to_s + "\n\n"
#Receipt
puts receipt
puts store + "\n\n" 
numgames.to_i.times do
	print game 
	print "---"
	puts xbox360
		end
	print "TOTAL: $"
	puts price.to_s + "\n\n"
	puts thanks

elsif game == "Xbox One"
	price = numgames.to_i * xboxOne
	print "Your total comes to $"
	puts price.to_s + "\n\n"
#Receipt
puts receipt
puts store + "\n\n" 
numgames.to_i.times do
	print game 
	print "---"
	puts xboxOne
		end
	print "TOTAL: $"
	puts price.to_s + "\n\n"
	puts thanks
end