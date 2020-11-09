
class SightingsController < ApplicationController

  def show
    sighting = Sighting.find(params[:id])
    #below is creating options variable that includes more data from the objects
    options = {
    include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end

end
