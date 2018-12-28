require_relative './db/config.rb'

class School 
    def login(input_email)
      Teacher.find_by(email:input_email) 
    end

    def list_students
        students = Student.all
        students.each do |s|
        puts "#{s.id} #{s.first_name}"
        end
    end

    def create_student
    end

    def find_student_by_id
    end

end

system 'clear'
divider = "==========================================="

# ================ DRIVER CODE =========================  #
# puts divider
# school = School.new
# puts "Enter your email to login"
# input_email = gets.chomp
# puts divider

# user_teacher = school.login(input_email)
  
# user_options = ["List of Students", "Create new student", "Find student by Id", "Exit"]
# if user_teacher 
#     while true
#         user_options.each_with_index do |user_option, index|
#             puts "#{index + 1} #{user_option}"
#         end
#         print "Options No. : "
#         option = gets.chomp.to_i - 1

#         system("clear")
#         chosen_option = user_options[option]

#         case chosen_option
#         when "List of Students"
#             puts "List of Students"
#             school.list_students
#             puts divider
#         when "Create new student"
#             puts "Create new student"
#             puts divider
#         when "Find student by Id"
#             puts "Found student"
#             puts divider
#         when "Exit"
#             break
#         end
#     end    
# end

students = Student.all 

students.find_by(id)

