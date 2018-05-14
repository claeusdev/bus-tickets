class Route < ApplicationRecord
    has_many :tickets, dependent: :destroy

    before_save :add_name

    def add_name
    	self.name = [origin, destination].join('-')
    end


end
