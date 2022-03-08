class Post < ApplicationRecord 

    validate_with NameValidator



def as_json(options = nil)
    super(only: [:name, :id, :created_at])

end
end