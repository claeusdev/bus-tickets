class Ticket < ApplicationRecord
  belongs_to :route
  has_many :orders, dependent: :destroy
end
