# Simulate elections
puts "\nWelcome to my election voting program.

Election candidates are: Daenerys, Cersei, Jon\n\n"
dt = 0
cl = 0
js = 0
i = 0
# Process elections, asking a user to choose a candidate 10 times
while i < 10
  print "Vote ##{i+1}: "
  name = gets.chomp.downcase
  if name == "daenerys"
    dt += 1
  elsif name == "cersei"
    cl += 1
  elsif name == "jon"
    js += 1
  else
    puts "Wrong name. Choose from Daenerys, Cersei, Jon"
    i -= 1
  end
  i += 1
end
# Show the voting results
puts "\nELECTION RESULTS....

Vote Summary:"
# Say vote or votes appropriately
if dt == 1
  puts "Daenerys - 1 vote"
else
  puts "Daenerys - #{dt} votes"
end
if cl == 1
  puts "Cersei - 1 vote"
else
  puts "Cersei - #{cl} votes"
end
if js == 1
  puts "Jon - 1 vote"
else
  puts "Jon - #{js} votes"
end
# Find and print a winner
if (dt > cl) && (dt > js)
  puts "\nWINNER: Daenerys!"
elsif (cl > dt) && (cl > js)
  puts "\nWINNER: Cersei!"
elsif (js > dt) && (js > cl)
  puts "\nWINNER: Jon!"
else
  puts "\nNo Winner"
end
