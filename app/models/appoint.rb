class Appoint < ApplicationRecord
    validates :quantity, presence: true
    
    belongs_to :person
    belongs_to :material
end
