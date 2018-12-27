require_relative "../config.rb"

class AddingForeignKeyIntoStudents < ActiveRecord::Migration[5.2]
    def change
        add_reference :students, :teachers, foreign_key: true 
    end
end