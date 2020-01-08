class LocationsController < ApplicationController

  def index
    locations = Location.all
    render json: LocationSerializer
end

{
  "data":{
    "id":"1",
    "type":"sighting",
    "attributes":{
      "created_at":"2020-01-08T12:50:38.873Z",
      "bird":{
        "id":1,
        "name":"Black-Capped Chickadee",
        "species":"Poecile Atricapillus",
        "created_at":"2020-01-08T12:50:38.795Z",
        "updated_at":"2020-01-08T12:50:38.795Z"
      },
      "location":{
        "id":1,
        "latitude":40.73061,
        "longitude":-73.935242,
        "created_at":"2020-01-08T12:50:38.826Z",
        "updated_at":"2020-01-08T12:50:38.826Z"
      }
    }
  }
}