class Week < ApplicationRecord
    has_many :haunteds
    has_many :farms
    has_many :users
    belongs_to :user
    validates :week_number, presence: true
    #validates :week_number, uniqueness: true
end
