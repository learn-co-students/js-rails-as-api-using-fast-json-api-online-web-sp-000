class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
end

#rails g serializer Bird 
#specify what attributes we want to include 
# localhost/sightings/2 we see:
# {
 # "id": "2",
 # "type": "sighting",
 # "attributes": {
 #   "created_at": "2019-05-14T16:39:37.011Z"
 # }
#}