class TicketsController < ApplicationController


	def show
		@ticket = Ticket.find(params[:id])
	end
	
end
