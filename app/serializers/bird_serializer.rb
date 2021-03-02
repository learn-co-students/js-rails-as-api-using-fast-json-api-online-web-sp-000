class BirdSerializer
  include JSONAPI::Serializer
  attributes :name, :species
end
