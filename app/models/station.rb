class Station < ApplicationRecord
    has_many :tickets
    has_many :devices, :through => :tickets
end
