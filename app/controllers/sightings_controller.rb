class SightingsController < ApplicationController
  def index
      @sightings = Sighting.all 
      render json: SightingSerializer.new(@sightings)
  end

  def show
      if find_sighting
          render json: SightingSerializer.new(@sighting)
      else  
          render json: {message: 'Sighting not found'}
      end
  end

  private

  def find_sighting
      @sighting = Sighting.find_by(id:params[:id])
  end
end