class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :quantity, presence:true

    has_many :crochets
    has_many :people, through: :crochets

    def name_with_description
        "#{name} - #{description}"
    end
end
