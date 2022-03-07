class Post < ApplicationRecord 

    validates :name, presence: true
    






    def as_json(options = nil)

        super(only: [:name, :id, :created_at, :updated_at])
    end



    
end