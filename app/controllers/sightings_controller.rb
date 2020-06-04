class SightingsController < ApplicationController

  def index
  sightings = Sighting.all
  render json: SightingSerializer.new(sightings)
  end



  def show

    sighting = Sighting.find(params[:id])
    options = {
    include: [:bird, :location]}
    # render json: sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])

    # -------- New Version ------------

    # render json: SightingSerializer.new(sighting)

    # With the new FASTJsonapi gem we now include

    render json:SightingSerializer.new(sighting, options)
    # remember we are making access to the rails API simpler
    # 1. SightingSerializer.new ----> creates a new instance of a sighting with attributes already applied. ( SEE BELOW)

        # ---- BELOW ---------
  #
  # def initialize(sighting_object)
  #   @sighting = sighting_object
  # end
  #
  # def to_serialized_json
    # @sighting.to_json(:include => {
    #   :bird => {:only => [:name, :species]},
    #   :location => {:only => [:latitude, :longitude]}
    # }, :except => [:updated_at])
    #

  end
end
