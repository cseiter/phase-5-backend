class Comment < ApplicationRecord
    #belongs_to :user
    #belongs_to :ticket
    has_many :users, dependent: :destroy
    has_many :tickets, dependent: :destroy
end
