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

@students = []

def input_students
  print "Please enter the name of the first student, or press return to exit\n"
  @name = gets.chomp
  while !@name.empty? do
    get_details   
    student_array_add
  end
  return @students
end

def get_details
    print "Cohort month (first three letters): "
    get_cohort_month
    print "Age of #{@name}: "
    @age = gets.slice!(0..-2)
    print "Height (cm) of #{@name}: "
    @height = gets.chomp
end

def get_cohort_month
      @cohort = gets.chomp.upcase
      until ["JAN", "FEB", "MAR", "APR","MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"].include? @cohort
      print "Please enter a valid month (first three letters): "
      @cohort = gets.chomp.upcase
      end
      @cohort = @cohort.to_s
end

def student_array_add
    @students << {:name => @name, :age => @age, :height => @height, :cohort => @cohort}
    if @students.length == 1
      print "Now we have 1 student\n\n"
    else
    print "Now we have #{@students.length} students\n\n"
    end
    print "Please enter the next name (or return to finish)\n"
    @name = gets.chomp
end


def print_header
  print "\n"
  print "The students of my cohort at Makers Academy (filtered as applicable)\n".ljust(20)
  print "-------------\n".ljust(20)
end

def print_all
  if @students.length == 0
    exit
  else
  
  puts "Filter by letter? (Enter letter or press return for no filtering)"
    letter = gets.chomp
  puts "Filter by name length? (Enter length or press return for no filtering)"
    name_length = gets.chomp.to_i
  
  print_header
  #to be refactored (while/unless?)!! and input validation (capitalise)  
    @students.each_with_index do |name, index|
      if letter.empty? && name_length == 0
        print "#{index + 1} #{name[:name]}, age: #{name[:age]}, height: #{name[:height]} (#{name[:cohort]} cohort)\n".ljust(20)
      elsif name[:name].chr == letter && name[:name].length < name_length
        print "#{index + 1} #{name[:name]}, age: #{name[:age]}, height: #{name[:height]} (#{name[:cohort]} cohort)\n".ljust(20)
      elsif name[:name].chr == letter
        print "#{index + 1} #{name[:name]}, age: #{name[:age]}, height: #{name[:height]} (#{name[:cohort]} cohort)\n".ljust(20)
      elsif name[:name].length < name_length
        print "#{index + 1} #{name[:name]}, age: #{name[:age]}, height: #{name[:height]} (#{name[:cohort]} cohort)\n".ljust(20)

      end  
    end
end
end
  
def print_footer
  print "\n"
  if @students.length > 1 
  print "Overall, we have #{@students.length} great students\n".ljust(20)
  elsif @students.length == 1
  print "Overall, we have 1 great student\n".ljust(20)
  end
end


input_students
#print_header
print_all
print_footer
  