class Seat < ApplicationRecord
	belongs_to :bus
	has_many :tickets, dependent: :destroy
end
