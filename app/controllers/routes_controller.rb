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
