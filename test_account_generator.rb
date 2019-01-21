
numbers = Hash.new
random_numbers = Array.new
5.times do |i|
  random_numbers[i] = rand(12..21)
end
numbers[:random_numbers] = random_numbers


user_numbers = Array.new
puts "\nPlease provide five integer values between 12 and 21, both inclusive:"
5.times do |i|
  print "What's number #{i+1}? "
  user_numbers[i] = gets.chomp.to_i
end
numbers[:user_input] = user_numbers

puts numbers

count_numbers = Hash.new
5.times do |i|
  rn = numbers[:random_numbers][i]
  if count_numbers[rn] != nil
    count_numbers[rn][:random] += 1
  else
    count_numbers[rn] = {random: 1, user: 0}
  end
  un = numbers[:user_input][i]
  if count_numbers[un] != nil
    count_numbers[un][:user] += 1
  else
    count_numbers[un] = {random: 0, user: 1}
  end
end
print "Check number: "
check_number = gets.chomp.to_i
count_numbers.keys.length.times do |i|
  if check_number == count_numbers.keys[i]
    puts "\sThe number, #{check_number} shows up #{count_numbers[check_number][:random]} time(s) in the randomly generated numbers."
  end
end
