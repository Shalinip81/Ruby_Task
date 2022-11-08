$name="Default"

class Employee
  @@no_of_customers=0
  # puts "Employee:global var: #{$name}"
  # puts "Employee:instance var: #{@abc}"
  # puts "---------------------------"

  def initialize(id,name,address)
    @emp_id=id
    @emp_name=name
    @emp_add=address
    @@no_of_customers +=1
  end
  def display
    xyz = "EMPLOYEE: local variable"
    puts xyz
    puts "ID is :#@emp_id"
    puts "Name is :#@emp_name"
    puts "Address is :#@emp_add"
    puts "no of customers : #@@no_of_customers"
  end
  # puts "var: #{xyz}"
# puts "no of customers:#@@no_of_customers"
end

# puts"Employee Class"
# obj1=Employee.new("1","harry","delhi")
# obj1.display
# puts "\n"
# obj2=Employee.new("2","ABC","Indore")
# obj2.display

class Animal
  # puts "Animal:global var: #{$name}"
  # puts "Animal:instance var: #{@abc}"
  # puts "---------------------------"

 @@no_of_animals=0
#  def initialize(name,color,petname)
#   @ani_name=name
#   @ani_color=color
#   @ani_petn=petname
#   @@no_of_animals +=1
#  end
#  def display
#   xyz = "ANIMAL: local variable"
#   puts "Animal;' #{$name}"
#   puts "name is :#@ani_name"
#   puts "color is :#@emp_color"
#   puts "petname is :#@ani_petn"
#   puts "Default name :#$name"
#   puts "NO of animals: #@@no_of_animals"
#  end

  def display(a,b,c)
    @a = a
    @b = b
    @c = c
  end

 def display_instance
  puts "a: #@a"
  puts "b: #@b"
  puts "c: #@c"
 end
end

ani1=Animal.new
ani1.display(1,2,3)
puts "------------------------"
a2=Animal.new
a2.display(4,5,6)
puts "------------------------"
ani1.display_instance
a2.display_instance
puts "------------------------"


# puts "\n"
# puts "-----------------------------------------------"
# puts"Animal Class"
# ani1=Animal.new("tommy","blue","tom")
# ani1.display
# puts "\n"
# ani2=Animal.new("bunny","white","bunny")
# ani2.display

# puts "\n"
# puts($name)