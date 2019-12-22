class SightingsController < ApplicationController
  
  def index
    sightings = Sighting.all
    render json: SigthingSerializer.new(sighting)
  end

  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SigthingSerializer.new(sighting)
  end
  
end