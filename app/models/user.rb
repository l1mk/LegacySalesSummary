class User < ApplicationRecord
    has_secure_password
    has_many :weeks
    has_many :haunteds, through: :weeks
    has_many :farms, through: :weeks


validates :username, presence: true
validates :email, presence: true
validates :username, presence: true
validates :email, uniqueness: true
validates :password, presence: true, on: :create

end
