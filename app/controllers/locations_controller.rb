class LocationsController < ApplicationController
    def index
        @locations = Location.all 
        render json: LocationSerializer.new(@locations)
    end

    def show
        if find_location
            render json: LocationSerializer.new(@location)
        else  
            render json: {message: 'Location not found'}
        end
    end

    private

    def find_location
        @location = Location.find_by(id:params[:id])
    end
end