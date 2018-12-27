require_relative "../config.rb"

class CreateTeachers < ActiveRecord::Migration[5.2]
    def change
        create_table :teachers do |t|
            t.string :first_name
            t.string :last_name
            t.string :email
            t.integer :phone
            t.timestamps
        end 
    end
end