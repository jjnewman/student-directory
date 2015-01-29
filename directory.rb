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

@students =[]

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "4. Load the list from students.csv"
    puts "9. Exit"
end

def process(selection)
 case selection
      when "1"
      input_students  
      when "2"
      show_students    
      when "3"
      save_students
      when "4"
      load_students
      when "9"
      exit
      else
      puts "I don't know what you meant, try again"
      end
end
  
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #students = []
  name = gets.chomp
  while !name.empty? do
    #add the student hash to the array
    @students << {:name => name, :cohort => :February}
    puts "Now we have #{@students.length} students"
    name = gets.chomp
  end
  return @students
end

def show_students
     print_header
     print_students_list
     print_footer
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_students_list
    @students.each do |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end
  
def print_footer
  puts "Overall, we have #{@students.length} great students"
end

def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  file.close
end
  



interactive_menu
#students = input_students
#print_header
#print(students)
#print_footer(students)
  