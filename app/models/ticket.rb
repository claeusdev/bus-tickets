class Ticket < ApplicationRecord
  belongs_to :route
  has_many :orders, dependent: :destroy
  belongs_to :bus
  belongs_to :seat

  def make_unavailable
		seat.available = false
	end
end
