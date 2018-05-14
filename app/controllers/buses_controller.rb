class BusesController < ApplicationController



	def create
		@bus = Bus.new(bus_params)
		if @bus.save
			redirect_to admin_path
		end
	end


	private


	def bus_params
		params.require(:bus).permit(:number, :seats)
	end
end
