class User < ApplicationRecord
    has_secure_password
    has_many :weeks
    has_many :haunteds, through: :weeks
    has_many :farms, through: :weeks
validates :username, presence: true
validates :username, uniqueness: true
validates :email, presence: true
validates :email, uniqueness: true
validates :password, presence: true, on: :create

    def self.find_or_create_by_omniauth(auth_hash)
        oauth_email = auth_hash["info"]["email"]
        oauth_name = auth_hash["info"]["name"]
        random_password = SecureRandom.hex
        if  @user = User.find_by(email: oauth_email)
            return @user
        else
            @user = User.create(email: oauth_email, username: oauth_email, name: oauth_name, password: random_password, password_confirmation: random_password)
            return @user
        end


    end

end
