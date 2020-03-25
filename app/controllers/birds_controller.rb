class BirdsController < ApplicationController
    def index
        @birds = Bird.all 
        render json: BirdSerializer.new(@birds)
    end

    def show
        if find_bird
            render json: BirdSerializer.new(@bird)
        else  
            render json: {message: 'Bird not found'}
        end
    end

    private

    def find_bird
        @bird = Bird.find_by(id:params[:id])
    end
end
