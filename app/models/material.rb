class Material < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :unit_price, presence: true
end
