require_relative "../config.rb"

class TeacherChangingColumn < ActiveRecord::Migration[5.2]
    def change
        change_column :teachers, :phone, :string
    end
end