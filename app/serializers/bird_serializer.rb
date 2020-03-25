class BirdSerializer < ActiveModel::Serializer
  
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
  
end
