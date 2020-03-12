class Week < ApplicationRecord
    has_many :haunteds
    has_many :farms
    has_many :users
    belongs_to :user
end
