# Get user's words to put them into the MadLib text
puts "Welcome to my MadLib program. Please enter in some information below:"
print "female human being: "
living_creature = gets.chomp
print "family member: "
family_member = gets.chomp
print "clothes, singular: "
clothes = gets.chomp
print "color: "
color = gets.chomp
print "another family member: "
family_member2 = gets.chomp
print "food: "
food = gets.chomp
print "number from 2 to 5: "
number = gets.chomp
print "drink: "
drink = gets.chomp
print "disease: "
disease = gets.chomp
print "weather adjective: "
weather_adjective = gets.chomp
print "adverb: "
adverb = gets.chomp
print "another adverb: "
adverb2 = gets.chomp
print "action verb: "
verb = gets.chomp
print "something fragile: "
fragile = gets.chomp
print "greeting: "
greeting = gets.chomp

# Show the user’s input substituted into the MadLib text
puts "HERE'S YOUR MADLIB"
puts "Once upon a time there was a little #{living_creature} who was loved by everyone who looked at her,
but most of all by her #{family_member}.
Once her #{family_member} gave her a little #{clothes} of #{color} velvet, which suited her so well that she would never wear anything else;
so she was always called 'Little #{color.capitalize} #{clothes.capitalize}'.
One day her #{family_member2} said to her: 'Come, #{color.capitalize} #{clothes.capitalize},
here is a piece of #{food} and #{number} bottles of #{drink};
take them to your grandmother, she has #{disease}, and they will do her good.
Set out before it gets #{weather_adjective}, and when you are going, walk #{adverb} and #{adverb2}
and do not run off the path, or you may #{verb} and break the #{fragile};
and when you go into her room, don't forget to say, '#{greeting}'."
