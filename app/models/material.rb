class Material < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :quantity, presence:true
    validates :unit_price, presence: true
    
    #has_many :appointments 
    #has_many :people, through: :appointments

    has_many :appoints
    has_many :people, through: :appoints

    def name_with_description
        "#{name} - #{description}"
    end
end
