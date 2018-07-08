class RoutesController < ApplicationController

    def show
        @route = Route.find(params[:id])
        @tickets = @route.tickets
        @all_tickets = []

        @tickets.each do |ticket|
            if ticket.seat.available
                @all_tickets.push(ticket)
            end
        end
        @available_tickets = @all_tickets
        p @available_tickets
    end

    def create
    	@route = Route.new(route_params)
    	if @route.save
    		redirect_to admin_path
    	end
    end

    def destroy
        @route = Route.find(params[:id])
        @route.destroy
        respond_to do |format|
            format.html { redirect_to admin_path, notice: 'Item was successfully destroyed.' }
            format.json { head :no_content }
        end
    end


    private

    def route_params
    	params.require(:route).permit(:origin, :destination)
    end
    
end
