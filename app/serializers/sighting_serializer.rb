
class SightingSerializer

  include FastJsonapi::ObjectSerializer
  #note we are also accessing related attributes from bird and location
  attributes :created_at
  #code below accesses related objects
  #, :bird, :location

  belongs_to :bird
  belongs_to :location

end
