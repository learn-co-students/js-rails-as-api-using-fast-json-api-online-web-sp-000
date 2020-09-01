class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: SightingSeriaizer.new(sightings)
  end

  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSeriaizer.new(sighting, options)
  end
end
