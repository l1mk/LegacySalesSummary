class Month < ApplicationRecord
    has_many :weeks
    has_many :haunteds, through: :weeks
    has_many :farms, through: :weeks
end
