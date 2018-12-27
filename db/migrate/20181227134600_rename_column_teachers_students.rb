class RenameColumnTeachersStudents < ActiveRecord::Migration[5.2]
    def change
        rename_column :student_teachers, :teachers_id, :teacher_id
        rename_column :student_teachers, :students_id, :student_id 
    end
end