 class NameValidator < ActiveModel::Validator
  
    def validate(record)
        if record.name.nil? || record.name.length != 20
record.errors.add(:name, :not_2,{ message: 'le champs droit etre de 20 caractere'})
        end
        if record.content.nil? || record.content.length != 50
            record.errors.add(:content, 'le champs droit etre de 50 caractere')
        end




    end 

    end