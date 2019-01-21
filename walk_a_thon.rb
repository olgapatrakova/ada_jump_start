# Program for tracking a walk-a-thon
print "\nWelcome to Crystal's Walk-A-Thon Tracker
Our goal is to raise money!

Enter the earning goal for this event > "
goal = gets.chomp.to_f
print "Enter the amount earned per lap (per person) > "
per_lap = gets.chomp.to_f
puts "\nPlease enter the number of laps completed by each person."
total = 0
walker_laps = Hash.new
# Get earnings per walker
5.times do |i|
  print "Walker ##{i+1} > "
  laps_number = gets.chomp.to_f
  earned = per_lap * laps_number
  puts "\n\t--> Earned $%0.2f" % [earned]
  walker_laps[i] = earned
end
# Find walkers with maximum earnings
maximum_earnings = walker_laps.first
winners = Array.new
walker_laps.each do |walker, earned|
  if earned > maximum_earnings
    maximum_earnings = earned
    winners = [walker]
  elsif earned == maximum_earnings
    winners += [walker]
  end
  total += earned
end
# Print the results
puts "\n\n========================================"
print "Highest Earning Walker(s): "
winners.each do |w|
    print (w+1).to_s + " "
end
puts "\nTotal amount earned: $%0.2f" % [total]
print "Goal Met? "
if total >= goal
  puts "YES! :-)
The goal was beaten by $%0.2f" % [total - goal]
else
  puts "NO :-(
The goal was missed by $%0.2f" % [goal - total]
end
# To process 500 walkers ask a user to print all walker laps separated by commas only
# instead of typing each walker's lap separately. Store the input in an array and then work with it.
# To consider different amount per lap walked also ask a user to enter earnings per lap
# for each walker separated by comma. The count of values entered will be the count of laps this walker made.
