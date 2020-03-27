class Haunted < ApplicationRecord
    belongs_to :week
    belongs_to :client
    belongs_to :user
    validates :recap, presence: true
    validates :recap, uniqueness: true
    validates :order_number, presence: true
    validates :order_number, uniqueness: true
end
