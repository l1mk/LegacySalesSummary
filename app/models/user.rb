class User < ApplicationRecord
    has_many :weeks
    has_many :haunteds, through: :weeks
    has_many :farms, through: :weeks
has_secure_password
validates :username, presence: true
validates :email, presence: true

end
