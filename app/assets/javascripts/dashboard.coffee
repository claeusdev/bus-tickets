jQuery ->
    seats = $('#ticket_seat_id').html()
    $('#ticket_bus_id').change -> 
        bus = $('ticket_bus_id :selected').text()
        options = $(seats).filter("optgroup[label='#{bus}'").html()
        if options
            console.log(option)
            $('ticket_seat_id').html(options)
        else 
             $('ticket_seat_id').empty()
