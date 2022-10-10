class Crochet < ApplicationRecord
    validates :ending_price, presence: true
    validates :sale, presence:true

    belongs_to :person
    belongs_to :product
end
