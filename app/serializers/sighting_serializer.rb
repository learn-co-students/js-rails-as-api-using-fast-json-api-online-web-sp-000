class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  #bird and location are the related objects, so
  #we have no control over what attributes are included in the related objects

  belongs_to :bird
  belongs_to :location
end
