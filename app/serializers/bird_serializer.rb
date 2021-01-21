class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species, :bird, :location
end
