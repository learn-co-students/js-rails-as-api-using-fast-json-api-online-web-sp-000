class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location
  
  def show
    sighting = Sighting.find_by(id: params[:id])
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
