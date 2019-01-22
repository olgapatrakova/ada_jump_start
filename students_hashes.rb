# Generate student accounts. Hash version
student_data = Array.new
5.times do |i|
  student_data[i] = Hash.new
  # Get students' names from a user
  puts "Please, enter the first and the last student's name: "
  student_data[i][:name] = gets.chomp
  student_data[i][:ID] = rand(111111..999999)
  split_name = Array.new
  split_name = student_data[i][:name].downcase.split
  first_letters = ""
  # Get first letters from first names
  (split_name.length - 1).times do |j|
    first_letters += split_name[j].slice(0)
  end
  # Create an email: first letters of first names, last name and ADA domain name
  student_data[i][:email] = first_letters + split_name.last << "@adadevelopersacademy.org"
end
puts student_data
