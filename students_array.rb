# Generate student accounts. Array version
puts "\nLet's make a student account generator."
names = Array.new
id_numbers = Array.new
email = Array.new
names_split = Array.new
5.times do |i|
  # Make sure ID numbers are not duplicates
  rand_id = rand(111111..999999)
  while id_numbers.include?(rand_id)
      rand_id = rand(111111..999999)
  end
  id_numbers[i] = rand_id
  # Get students' names from a user
  puts "Please, enter the first and the last student's name: "
  names[i] = gets.chomp.upcase
  names_split[i] = names[i].split
  first_letters = ""
  # Get first letters from first names
  (names_split[i].length - 1).times do |j|
    first_letters += names_split[i][j].slice(0)
  end
  # Create an email: first letters of first names, last name, 3 last digits of ID number and ADA domain name
  email[i] = first_letters + names_split[i].last + id_numbers[i].to_s.slice(3..5) << "@adadevelopersacademy.org"
end
puts email
