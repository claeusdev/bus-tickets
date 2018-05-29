class TicketsController < ApplicationController
	before_action :find_ticket

	def show
		@ticket = Ticket.find(params[:id])
	end


	def create
		@ticket = Ticket.new(ticket_params)

		if @ticket.save
			redirect_to admin_path
		end
	end

	 def edit

    end


    def update
        respond_to do |format|
            if @ticket.update(product_params)
                format.html { redirect_to dashboard_path, notice: 'Item was successfully updated.' }
                format.json { render :show, status: :ok, location: admin_path }
            else
                format.html { render :edit }
                format.json { render json: @ticket.errors, status: :unprocessable_entity }
            end
        end
    end


    def destroy
        @ticket.destroy
        respond_to do |format|
            format.html { redirect_to admin_path, notice: 'Item was successfully destroyed.' }
            format.json { head :no_content }
        end
    end


	private

	def find_ticket
		@ticket = Ticket.find(params[:id])
	end

	def ticket_params
		params.require(:ticket).permit(:route_id, :departure_time, :departure_date, :price, :bus_id)
	end
	
end
