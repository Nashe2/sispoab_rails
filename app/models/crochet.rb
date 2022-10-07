class Crochet < ApplicationRecord
    validates :ending_price, presence: true
    validates :sale, presence:true
end
