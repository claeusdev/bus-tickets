class OrdersController < ApplicationController
    before_action :authenticate_user!
    # before_action :set_ticket

    def reserve
      @ticket = Ticket.find(params[:id])
      p @ticket
      current_user.orders.create(ticket_id: @ticket.id, order_total: @ticket.price)
      @ticket.make_unavailable
      @ticket.seat.save!
      p @ticket.seat
      redirect_to profile_path
    end


    private

    def set_ticket
      @ticket = Ticket.find(params[:ticket_id])
    end

    def order_params
      params.require(:order).permit(:user_id, :order_total)
    end

end
