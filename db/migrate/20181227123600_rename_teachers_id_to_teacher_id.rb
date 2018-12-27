class RenameTeachersIdToTeacherId < ActiveRecord::Migration[4.2]
    def change
        rename_column :students, :teachers_id, :teacher_id
    end
end