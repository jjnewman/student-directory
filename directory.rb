#put students into an array
students = [
  "Christopher Ward",
  "Rizwan Ali",
  "Vanessa Virgitti",
  "Tommaso Bratto",
  "Joe Newman",
  "Loris Fochesato",
  "Guido Vita Finzi",
  "Tom Coakes",
  "Kevin Lanzon",
  "Sebastien Pires",
  "Yannick Brunner",
  "Costas Sarris",
  "Diego Romero",
  "Erik Griffin",
  "Thomas Strothjohann",
  "Alex Parkinson",
  "Carrie Christenson",
  "Julian Veling",
  "Edward Brown",
  "Meads Chalcroft",
  "Sean Haughton",
  "Paul Fitzgerald",
  "Munded",
  "Phil Brockwell",
  "Gabe",
  "Kate Beavis",
  "Louise"
]
# and then print them
puts "The students of my cohort at Makers Academy"
puts "-------------"
students.each do |student|
  puts student
end
  #finally we print the total
print "Overall, we have #{students.length} great students"