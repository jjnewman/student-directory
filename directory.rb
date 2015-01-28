#put students into an array
students = [
  {:name => "Christopher Ward", :cohort => :February},
  {:name => "Rizwan Ali", :cohort => :February},
  {:name => "Vanessa Virgitti", :cohort => :February},
  {:name => "Tommaso Bratto", :cohort => :February},
  {:name => "Joe Newman", :cohort => :February},
  {:name => "Loris Fochesato", :cohort => :February},
  {:name => "Guido Vita Finzi", :cohort => :February},
  {:name => "Tom Coakes", :cohort => :February},
  {:name => "Kevin Lanzon", :cohort => :February},
  {:name => "Sebastien Pires", :cohort => :February},
  {:name => "Yannick Brunner", :cohort => :February},
  {:name => "Costas Sarris", :cohort => :February},
  {:name => "Diego Romero", :cohort => :February},
  {:name => "Erik Griffin", :cohort => :February},
  {:name => "Thomas Strothjohann", :cohort => :February},
  {:name => "Alex Parkinson", :cohort => :February},
  {:name => "Carrie Christenson", :cohort => :February},
  {:name => "Julian Veling", :cohort => :February},
  {:name => "Edward Brown", :cohort => :February},
  {:name => "Meads Chalcroft", :cohort => :February},
  {:name => "Sean Haughton", :cohort => :February},
  {:name => "Paul Fitzgerald", :cohort => :February},
  {:name => "Munded", :cohort => :February},
  {:name => "Phil Brockwell", :cohort => :February},
  {:name => "Gabe", :cohort => :February},
  {:name => "Kate Beavis", :cohort => :February},
  {:name => "Louise", :cohort => :February}
]

def input_students
  print "Please enter the names of the students\n"
  print "To finish, just hit return twice\n"
  #create an empty array
  students = []
  #gets the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {:name => name, :cohort => :February}
    print "Now we have #{students.length} students\n"
    #get another name from the user
    name = gets.chomp
  end
  return students
  #students
end

def print_header
  print "The students of my cohort at Makers Academy\n"
  print "-------------\n"
end

def print_all(names)
  names.each_with_index do |name, index|
    #to add extra argument in method for letter selection
    if name[:name].chr == "A"
      print "#{index + 1} #{name[:name]} (#{name[:cohort]} cohort)\n"
      end  
end
end
  
def print_footer(names)
  print "Overall, we have #{names.length} great students\n"
end

students = input_students
print_header
print_all(students)
print_footer(students)
  