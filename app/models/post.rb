class Post < ApplicationRecord 


    validate :ma_super_method_de_validation
    before_validation :default_slug
    #Ex:- :default =>''


def as_json(options = nil)
    super(only: [:name, :id, :created_at])
end

def ma_super_method_de_validation
    if name.length != 2
        errors.add(:name,'le champs droit etre de deux caractere')
    end

end
private

def default_slug 
    self.slug = name
end
end