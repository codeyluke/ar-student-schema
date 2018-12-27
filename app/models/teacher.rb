class Teacher < ActiveRecord::Base
    validates :email, format: {with: /.+@.+\...+/}

end

