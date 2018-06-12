class SearchesController < ApplicationController
  def search
    @routes = Route.where('origin iLike? AND destination iLike?',  "%#{params[:from]}%", "%#{params[:destination]}%").order(created_at: :desc)
  end
end
