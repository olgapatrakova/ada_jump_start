# Numbers program. Show if the user input greater than, equal to or less than 20
puts "\nThis program will ask you to enter numbers and share if the number is less than 20."
print "Enter the 1st number: "
# Ask the user to enter the 1st number and compare it to 20
first_number = gets.chomp.to_i
if first_number >= 20
  puts "#{first_number} is greater than or equal to 20."
else
  puts "#{first_number} is less than 20."
end
# Ask the user to enter the 2nd number and compare it to 20
print "Enter the 2nd number: "
second_number = gets.chomp.to_i
if second_number >= 20
  puts "#{second_number} is greater than or equal to 20."
else
  puts "#{second_number} is less than 20."
end
# Ask the user to enter the 3rd number and compare it to 20
print "Enter the 3rd number: "
third_number = gets.chomp.to_i
if third_number >= 20
  puts "#{third_number} is greater than or equal to 20."
else
  puts "#{third_number} is less than 20."
end
