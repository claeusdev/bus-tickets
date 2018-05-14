class TicketsController < ApplicationController


	def show
		@ticket = Ticket.find(params[:id])
	end


	def create
		@ticket = Ticket.new(ticket_params)

		if @ticket.save
			redirect_to admin_path
		end
	end


	private

	def ticket_params
		params.require(:ticket).permit(:route_id, :departure_time, :departure_date, :price, :bus_id)
	end
	
end
