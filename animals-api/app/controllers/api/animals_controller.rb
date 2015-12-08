module Api
  class AnimalsController < ApplicationController
    before_action :set_shelter

    def index
      render json: Animal.all
      # render json: {message: 'Resource not found'}
    end

    def show
      render json: Animal.find(params[:id])
    end

    def new
      @animal = @shelter.Animals.new
    end

    def create
      @animal = @shelter.Animals.new(animal_params)

      if @animal.save
        render json: animal, status: 201, location: [:api, animal]
      else
        render json: animal, status: 201, location: [:api, animal]
      end
    end

private
  def set_shelter
    @shelter = Shelter.find(params[:shelter_id]) if params[:category_id]
  end

  def animal_params
    params.require(:animal). permit(:specie, :color, :breed, :age, :size, :sex, :name, :note, :photo_url)
  end

end
end