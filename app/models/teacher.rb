class Teacher < ActiveRecord::Base
    validates :email, format: {with: /.+@.+\...+/}
    validates :phone, length: { minimum: 10}
    validates :email, uniqueness: true 
    has_many :student_teachers    
    has_many :students, through: :student_teachers
end

