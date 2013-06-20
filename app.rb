students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "andrew silbersmith", "Anuj Jhunjhunwala", "Ben Israeli", "Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]

puts "How many members would you prefer in a group?"
  group_members = gets.chomp.to_i

#Randomize students
students.shuffle!

total_groups = students.length / group_members
#Create an empty group array for the random teams
groups = []

#Using .pop to populate groups[] from students
total_groups.times do |goku|
  groups << students.pop(group_members)
end

groups.each do |individuals|
  puts individuals.to_s
end
#Must be a better way to add remaining student to a group array.
if students != 0
  puts "Oh no, #{students} needs to join a team"
end
