class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longtitude
end
