require 'active_record'
require_relative '../app/models/student.rb'
require_relative '../app/models/subject.rb'
require_relative '../app/models/teacher.rb'
require_relative '../app/models/student_teacher.rb'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/./ar-students.sqlite3")




# ==========================================
# ONE TO MANY 

# teachers = Teacher.all
# students = Student.all
# teachers_id = []

# teachers.each do |t|
#     teachers_id << t.id 
# end

# students.each do |s|
#    s.update(teachers_id: teachers_id.sample)
# end
# ============================================

# students = Student.all
# students_id = Hash.new()

# students.each do |s|W
#    students_id << s.id
# end

# pp students_id

