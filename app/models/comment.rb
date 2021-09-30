class Comment < ApplicationRecord
    #belongs_to :user
    #belongs_to :ticket
    has_many :users
    has_many :tickets
end
