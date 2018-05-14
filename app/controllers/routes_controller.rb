class RoutesController < ApplicationController

    def show
        @route = Route.find(params[:id])
    end

    def create
    	@route = Route.new(route_params)
    	if @route.save
    		redirect_to admin_path
    	end
    end


    private

    def route_params
    	params.require(:route).permit(:origin, :destination)
    end
    
end
