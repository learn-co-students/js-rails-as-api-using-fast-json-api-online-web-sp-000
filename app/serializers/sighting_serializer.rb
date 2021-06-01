class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  # can include related attributes, e.g.
  # attributes :created_at, :bird, :location 
  belongs_to :bird 
  belongs_to :location 
  # Including the belongs_to sets up the sightings controller for a second parameter in the json render
end
