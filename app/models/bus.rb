class Bus < ApplicationRecord


	has_many :seats, dependent: :destroy
	has_many :tickets, dependent: :destroy
end
