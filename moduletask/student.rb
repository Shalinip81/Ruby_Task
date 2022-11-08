# require "./school.rb"

# class Student
#     include School
# end

# stu=Student.new
# stu.organisation


require "./school.rb"

class Student
    extend School

    def details
        puts "Enter Name:"
        name=gets.chomp
        puts "Enter age:"
        age=gets.chomp 
        puts "Enter Address:"
        address=gets.chomp
        puts "your name is :#{name} "
        puts "your name is :#{age}"
        puts "your name is :#{address}" 
    end
end

stu=Student.new
# stu.details
School.organisation
