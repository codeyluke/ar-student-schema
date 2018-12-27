require 'active_record'
require_relative '../app/models/student.rb'
require_relative '../app/models/subject.rb'
require_relative '../app/models/teacher.rb'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/./ar-students.sqlite3")


# teacher = Teacher.create(
#     first_name: "Dolla",
#     last_name: "Sign",
#     email: "dolla@email.com",
#     phone: "+6012311234"
# )

# teacher = Teacher.first 
# teacher.delete

# student = Student.create(
#     first_name: "rea",
#     last_name: "alex",
#     gender: "female",
#     birthday: "1990-12-19",
#     email: "rea@example.com",
#     phone: "+601293123123"
# )

# student = Student.first
# student.delete

# student = Student.last 
# student.delete

