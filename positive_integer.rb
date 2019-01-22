# Numbers program. Add 20 to each of the three numbers entered by a user
puts "\nI will ask you to enter 3 positive integers and then will add 20 to them."
print "Type a positive integer: "
positive_integer1 = gets.to_i
print "Type another positive integer: "
positive_integer2 = gets.to_i
print "Type the third positive integer: "
positive_integer3 = gets.to_i
#Add 20 to each number and show the result
positive_integer1 += 20
positive_integer2 += 20
positive_integer3 += 20
puts "Twenty added to the numbers you entered gives us #{positive_integer1}, #{positive_integer2} and #{positive_integer3}."
