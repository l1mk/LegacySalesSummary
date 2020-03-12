class User < ApplicationRecord
    has_many :weeks
    has_many :haunteds, through: :weeks
    has_many :farms, through: :weeks
    belongs_to :week
has_secure_password
validates :username, presence: true
validates :email, presence: true

end
