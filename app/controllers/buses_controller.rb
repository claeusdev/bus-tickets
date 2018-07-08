class BusesController < ApplicationController

	def create
		@bus = Bus.new(bus_params)
		respond_to do |format|
			if @bus.save
			 	flash.notice = "bus has saved successfully"

				format.html {redirect_to '/admin'}
			else
				flash.alert = "Please complete form by filling all fields"
				format.html { redirect_to '/admin' }
			end
		end
	end


	private


	def bus_params
		params.require(:bus).permit(:number, :num_seats)
	end
end
