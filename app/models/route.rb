class Route < ApplicationRecord
    has_many :tickets, dependent: :destroy
end
