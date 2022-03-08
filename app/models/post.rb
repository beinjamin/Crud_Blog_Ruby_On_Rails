class Post < ApplicationRecord 


    validate :ma_super_method_de_validation



def as_json(options = nil)
    super(only: [:name, :id, :created_at])


end

def ma_super_method_de_validation
    if name.nil? || name.length != 20
        errors.add(:name, :not_2,{ message: 'le champs droit etre de 20 caractere'})
    end
    if content.nil? || content.length != 50
        errors.add(:content, 'le champs droit etre de 50 caractere')
    end

end
end