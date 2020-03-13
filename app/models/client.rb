class Client < ApplicationRecord
    has_many :haunteds
    has_many :farms
    validates :company, presence: true
    validates :company, uniqueness: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :dm, presence: true
    validates :address, presence: true
end
