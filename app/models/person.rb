class Person < ApplicationRecord
    validates :name, presence: true
    validates :first_name, presence: true
    validates :last_name, presence:true
    validates :phone, presence: true
    validates :gender, presence: true

end
