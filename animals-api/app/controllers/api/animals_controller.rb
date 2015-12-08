module Api
  class AnimalsController < ApplicationController
    # before_action :set_shelter

    def index
      render json: Animal.all
    end

    def show
      render json: Animal.find(params[:id])
    end

    def create
      animal = Animal.new(animal_params)
      if animal.save
        render json: animal, status: 201, location: [:api, animal]
      else
        render json: animal.errors, status: 422
      end
    end

    def update
      animal = Animal.find(params[:id])
      if animal.update(animal_params)
        head 204
      else
        render json: animal.errors, status: 422
      end
    end

    def destroy
      animal = Animal.find(params[:id])
      animal.destroy
      head 204
    end

  private
    # def set_shelter
    #   shelter = Shelter.find(params[:shelter_id])
    # end

    def animal_params
      params.require(:animal). permit(:specie, :color, :breed, :age, :size, :sex, :name, :note, :photo_url)
    end

  end
end