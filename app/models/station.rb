class Station < ApplicationRecord
    #belongs_to :ticket
    has_many :tickets dependent: :delete_all
end
