class Client < ApplicationRecord
    has_many :haunteds
    has_many :farms
end
