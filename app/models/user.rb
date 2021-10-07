class User < ApplicationRecord
    has_many :tickets, dependent: :destroy
    has_many :comments, dependent: :destroy
end
