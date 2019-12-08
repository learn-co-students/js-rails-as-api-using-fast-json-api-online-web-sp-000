class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)

    # SightingSerializer.new() can take in an object, and include: [] array for selection of serialization.

    # from this to above render json:
    # @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
  end

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
end
