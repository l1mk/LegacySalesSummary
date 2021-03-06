class Week < ApplicationRecord
    has_many :haunteds
    has_many :farms
    has_many :users
    belongs_to :user
    belongs_to :month
    validates :week_number, presence: true
    
    def self.by_month(month_id, user_id)
        where(month: month_id, user: user_id)
    end
end
