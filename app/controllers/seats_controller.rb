class SeatsController < ApplicationController


	def create
		@seat = Seat.new(seat_params)
		respond_to do |format|
			if @seat.save
			 	flash.notice = "Seat has saved successfully"

				format.html {redirect_to '/admin'}
			else
				flash.alert = "Please complete form by filling all fields"
				format.html {redirect_to '/admin'}
			end
		end
	end


	private


	def seat_params
		params.require(:seat).permit(:bus_id, :name)
	end
end
