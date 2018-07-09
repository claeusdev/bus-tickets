class OrderPdf < Prawn::Document

    def initialize(order)
        super()
        @order = order
        text "VIP BUS TICKET", size: 32
        move_down 15
        order_details
    end


    def order_details
        text "Ticket \##{@order.ticket_id}", size: 28, style: :bold
        move_down 20
        text "Bus Number: #{@order.ticket.bus.number}", style: :bold, size: 30
        text "Seat Number: #{@order.ticket.seat.seat_number}", style: :bold, size: 30
        text "#{@order.ticket.departure_date.strftime('Departure date: %m/%d/%Y')}", style: :bold, size: 30
        text "#{@order.ticket.departure_time.strftime('Departure time: %I:%M%p')}", style: :bold, size: 30
    end
   


end