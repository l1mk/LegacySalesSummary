class Farm < ApplicationRecord
    belongs_to :week
    belongs_to :client
    belongs_to :user
    validates :recap, presence: true
    validates :recap, uniqueness: true

    scope :biggest_amount, -> {
        where(amount:  self.maximum("amount"))
    }

end
