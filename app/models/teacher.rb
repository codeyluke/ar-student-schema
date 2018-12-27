class Teacher < ActiveRecord::Base
    validates :email, format: {with: /.+@.+\...+/}
    validates :phone, length: { minimum: 10}
    validates :email, uniqueness: true 
end

