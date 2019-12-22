class LocationSerializer < ActiveModel::Serializer

  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longitude

end
