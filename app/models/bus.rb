class Bus < ApplicationRecord


	has_many :seats, dependent: :destroy
end
