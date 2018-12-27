class RenameTable < ActiveRecord::Migration[5.2]
    def change
        rename_table :teachers_students, :student_teachers 
    end
end