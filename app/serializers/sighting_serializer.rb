class SightingSerializer
  include JSONAPI::Serializer
  attributes :created_at
  belongs_to :bird 
  belongs_to :location 
end
