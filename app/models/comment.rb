class Comment < ApplicationRecord
    #belongs_to :user
    #belongs_to :ticket
    has_many :users, dependent: :delete_all
    has_many :tickets, dependent: :delete_all
end
