class PagesController < ApplicationController
  def index
    @ticket = Ticket.where(route_id: params[:route_id]).all
  end

  def profile
    authenticate_user!
  end
end
