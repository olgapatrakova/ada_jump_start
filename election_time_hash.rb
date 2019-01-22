# Simulate elections using hashes
puts "\nWelcome to my election voting program.

Election candidates are: Daenerys, Cersei, Jon\n\n"
votes = {"daenerys" => 0, "cersei" => 0, "jon" => 0}
# Process elections, asking a user to choose a candidate 10 times
i = 0
while i < 10
  print "Vote ##{i+1}: "
  name = gets.downcase.chomp
  if votes[name] == nil
    puts "Wrong name. Choose from Daenerys, Cersei, Jon"
    i -= 1
  else
    votes[name] += 1
  end
  i += 1
end
# Show the voting results
puts "\nELECTION RESULTS....

Vote Summary:"
# Say vote or votes appropriately
votes.keys.each do |key|
  if votes[key] == 1
    puts "#{key.capitalize} - 1 vote"
  else
    puts "#{key.capitalize} -  #{votes[key]} votes"
  end
end
# Find and print a winner
maximum = 0
votes.keys.each do |key|
  name = key.capitalize
  key = votes[key]
  votes[key] = name
  if key > maximum
    maximum = key
  end
end
puts "\nWINNER: #{votes[maximum]}!"
# To handle more than 10 votes only a number of loops should be changed
# To handle more than 3 candidates add names to votes hash and to the text with names a user sees on screen
