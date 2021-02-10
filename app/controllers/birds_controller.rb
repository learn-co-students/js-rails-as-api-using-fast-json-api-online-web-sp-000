class BirdsController < ApplicationController


    def show
        bird = Bird.find(params[:id])
        render json: BirdSerializer.new(bird)
      end
    
end
