class Post < ApplicationRecord 

    validates :name, length: {in: 3 ...20} , uniqueness: true 



def as_json(options = nil)
    super(only: [:name, :id, :created_at])


end


    
end