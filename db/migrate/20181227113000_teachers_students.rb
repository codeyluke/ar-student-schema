require_relative "../config.rb"

class TeachersStudents < ActiveRecord::Migration[5.2]
    def change
       create_table :teachers_students do |t|
        t.timestamps
       end 
       add_reference :teachers_students, :teachers, foreign_key: true 
       add_reference :teachers_students, :students, foreign_key: true
    end
end