class BirdsController < ApplicationController
    def index
        birds = Bird.all
        options = {
            include: [:locations, :sightings]
        }
        render json: BirdSerializer.new(birds, options)
    end
    def show
        bird = Bird.find_by(id: params[:id])
        options = {
            include: [:locations, :sightings]
        }
        render json: BirdSerializer.new(bird, options)
    end
end
