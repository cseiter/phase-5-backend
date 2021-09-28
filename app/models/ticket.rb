class Ticket < ApplicationRecord
    has_many :comments
    has_one :user
    has_one :device
    has_one :station
    has_one :status
end
