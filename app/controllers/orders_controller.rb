class OrdersController < ApplicationController
    before_action :authenticate_user!
    # before_action :set_ticket

    def reserve

      if params[:id]
        @ticket = Ticket.find(params[:id])
        p @ticket
        current_user.orders.create(ticket_id: @ticket.id, order_total: @ticket.price)
        redirect_to profile_path
      end
    end



    # def new
    #   @order = Order.new
    # end
    #
    # def create
    #   @order = Ticket.find(params[:order][:ticket_id])
    #   @order = current_user.orders.new(order_params)
    #   @order.ticket_id = @ticket.id
    #   @order.order_total = @ticket.price
    #   if @order.save
    #     redirect_to profile_path
    #   end
    # end

    private

    def set_ticket
      @ticket = Ticket.find(params[:ticket_id])
    end

    def order_params
      params.require(:order).permit(:user_id, :order_total)
    end

end
