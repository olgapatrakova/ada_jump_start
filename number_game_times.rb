puts "\nLet's play a numbers game. How many numbers would you like to enter?"
# Get the control number from a user
control_number = gets.chomp.to_i
# Get numbers from a user and check if they are divisible by 3
control_number.times do |i|
  if i == 0
    print "Enter the 1st positive integer: "
  elsif i == 1
    print "Enter the 2nd positive integer: "
  elsif i == 2
    print "Enter the 3rd positive integer: "
  else
    print "Enter the #{i+1}th positive integer: "
  end
  integer = gets.chomp.to_i
  if integer % 3 == 0
    puts "#{integer} is divisible by 3."
  else
    puts "#{integer} is not divisible by 3."
  end
end
