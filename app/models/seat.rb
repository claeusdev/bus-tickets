class Seat < ApplicationRecord
	belongs_to :bus
	has_one :ticket, dependent: :destroy
end
