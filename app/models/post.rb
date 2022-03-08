class Post < ApplicationRecord 


    validate :ma_super_method_de_validation



def as_json(options = nil)
    super(only: [:name, :id, :created_at])


end

def ma_super_method_de_validation
    if name.length != 2
        errors.add(:name,'le chamm droit etre de deux caractere')
    end

end
end