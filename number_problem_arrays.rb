# Numbers program. Show min, max and average for numbers entered by a user. Compare each number with the last number entered
puts "\nLet's play a numbers game. How many numbers would you like to enter?
"
# Ask a user to enter a control number and positive integers
control_number = gets.chomp.to_i
numbers = Array.new(control_number, 0)
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
  numbers_input = gets.chomp.to_i
  numbers[i] = numbers_input
end
# Compare each number to the last number entered by the user and print the result
puts "\nComparing to the last value entered, #{numbers.last}, here are the observations:"
numbers.length.times do |i|
  if numbers[i] < numbers.last
    puts "The value at index #{i}, #{numbers[i]} is less than value at the last index, #{numbers.last}."
  elsif numbers[i] > numbers.last
    puts "The value at index #{i}, #{numbers[i]} is greater than value at the last index, #{numbers.last}."
  else
    puts "The value at index #{i}, #{numbers[i]} is equal to the value at the last index, #{numbers.last}."
  end
end
# Print a maximum, minimum and an average from what the user entered
i = 0
maximum = numbers.first
minimum = numbers.first
total = 0
while i < numbers.length
  if numbers[i] > maximum
    maximum = numbers[i]
  end
  if numbers[i] < minimum
    minimum = numbers[i]
  end
  total += numbers[i]
  i += 1
end

puts "\nThe minimum value in the array is #{minimum}.
The maximum value in the array is #{maximum}.
The average of all the values in the array is #{total.to_f/control_number}."
