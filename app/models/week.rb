class Week < ApplicationRecord
    has_many :haunteds
    has_many :farms
    has_many :users
    belongs_to :user

    #new
        belongs_to :month

    validates :week_number, presence: true
end
