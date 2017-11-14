store = "RABID CAT GAMES"
thanks= "Thanks for shopping at Rabid Cat Games!"

#ps3
ps3 = 45
$ps3Inventory = 25

#ps4
ps4 = 60
$ps4Inventory = 30

#xbox360
xbox360 = 40
$xbox360Inventory = 20

#XboxOne
xboxOne = 55
$xboxOneInventory = 35

#inventory function
def printinventory ()
	puts "Current Inventory-"
	puts "   PlayStation3 Inventory: " + $ps3Inventory.to_s
	puts "   PlayStation4 Inventory: " + $ps4Inventory.to_s
	puts "   Xbox360 Inventory: " + $xbox360Inventory.to_s
	puts "   Xbox One Inventory: " + $xboxOneInventory.to_s
end

#def askagain (maxinventory, numberofgames)
#end

games = ["PlayStation3", "PlayStation4", "Xbox360", "Xbox One"]
receipt = "Printing Receipt..."
veteran = ["yes", "no"]
vet = veteran.sample

puts "Welcome to Rabid Cat Games!"
puts "This is what we currently have in stock.."
printinventory
puts "Which games would you like to purchase?"
game = games.sample
puts game
puts "Veterans recieve a 20 percent discount!"
puts "Are you a veteran?"
puts vet
print "How many games do you need? "
numgames = gets.chomp


#ps3
if game == "PlayStation3"

	#until loop- if they want more than is in stock
	until (numgames.to_i <= $ps3Inventory)
		puts "This is what we have in stock..."
		puts printinventory
		print "How many games do you need? "
		numgames = gets.chomp
	end

	#subtracting from inventory
	$ps3Inventory -= numgames.to_i

	price = numgames.to_i * ps3
	print "Your total comes to $"
	puts price.to_s + "\n\n"
#Receipt
	puts receipt
	puts store + "\n\n" #makes spaces so it looks nice
	numgames.to_i.times do
		print game 
		print "---"
		puts ps3
	end
	print "TOTAL: $"
	puts price.to_s + "\n\n"
	if vet == "yes"
		print "Applying veteran discount (20%)... $"
		puts price-(price*0.20)
	end



	#ps4
elsif game == "PlayStation4"

	until (numgames.to_i <= $ps4Inventory)
		puts "This is what we have in stock..."
		puts printinventory
		print "How many games do you need? "
		numgames = gets.chomp
	end
	$ps4Inventory -= numgames.to_i

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
	if vet == "yes"
		print "Applying veteran discount (20%)... $"
		puts price-(price*0.20)
	end

	

	#xbox360
elsif game == "Xbox360"

	until (numgames.to_i <= $xbox360Inventory)
		puts "This is what we have in stock..."
		puts printinventory
		print "How many games do you need? "
		numgames = gets.chomp
	end
	$xbox360Inventory -= numgames.to_i

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
	if vet == "yes"
		print "Applying veteran discount (20%)... $"
		puts price-(price*0.20)
	end



#XboxOne
elsif game == "Xbox One"
	until (numgames.to_i <= $xboxOneInventory)
		puts "This is what we have in stock..."
		puts printinventory
		print "How many games do you need? "
		numgames = gets.chomp
	end
	$xboxOneInventory -= numgames.to_i
		
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
	if vet == "yes"
		print "Applying veteran discount (20%)... $"
		puts price-(price*0.20)
	end


end
puts thanks + "\n\n"
puts printinventory
