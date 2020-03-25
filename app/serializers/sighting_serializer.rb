class SightingSerializer
  include FastJsonapi::ObjectSerializer
  # uncomment and comment out other to see difference:
  # attributes :created_at, :bird, :location

  #via relationships, creates a relationships subset of data:
  attributes :created_at
  belongs_to :bird
  belongs_to :location
  #requires passing second attribute into sightings controller, note uncommented/commented diff


end
