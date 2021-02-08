class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end

  def show
    sighting = Sighting.find(params[:id])
    SightingSerializer.new(sighting)
  end
end
