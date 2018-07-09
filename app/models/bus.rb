class Bus < ApplicationRecord


	has_many :seats, dependent: :destroy
	has_many :tickets, dependent: :destroy

	# def available_seats
	# 	seats.where(available: true)
	# end
end
