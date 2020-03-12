class User < ApplicationRecord
    has_many :weeks
    has_many :haunteds, through: :weeks
    has_many :farms, through: :weeks
    belongs_to :week
end
