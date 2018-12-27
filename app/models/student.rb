# implement your Student model here
class Student < ActiveRecord::Base
    validates :email, format: {with: /.+@.+\...+/}
    validates :email, uniqueness: true 
    validates :age, numericality: { greater_than: 5}
    validates :phone, length: { minimum: 10}
    has_many :student_teachers
    has_many :teachers, through: :student_teachers

    def name 
       "#{self.first_name} #{self.last_name}"
    end

    def age
        age = Date.today.year - self.birthday.year
    end    
end

