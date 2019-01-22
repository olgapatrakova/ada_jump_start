# Virtual candy machine
puts "\nWelcome to Ada Developers Academy's Computer Candy Machine!
(All candy provided is virtual.)"
print "\nHow much money do ya got? > $"
# Ask for amount of money the user has
amount = gets.chomp.to_f * 100
puts "\n$#{amount/100}, that's all?
Well, lemme tell ya what we got here."
# Show options and get the user's choice
print "\nA $0.65 Twix
B $0.50 Chips
C $0.75 Nutter Butter
D $0.65 Peanut Butter Cup
E $0.55 Juicy Fruit Gum

So, What'll ya have? > "
choice = gets.chomp.downcase
# Calculate the change from entered amount, showing appropriate messages
# if an invalid amount for the money or an invalid selection was entered
if (choice == "a") || (choice == "d")
  change = amount - 65
elsif (choice == "b")
  change = amount - 50
elsif (choice == "c")
  change = amount - 75
elsif (choice == "e")
  change = amount - 55
else
  print "No such option. Please, choose from A, B, C, D or E."
end

if (change.to_f / 100) < 0
    puts "\nYou're broke. Take your $#{amount} and go elsewhere."
else
    puts "\nThanks for purchasing candy through us.
Please take your candy, and your $#{change/100} change!"
end
