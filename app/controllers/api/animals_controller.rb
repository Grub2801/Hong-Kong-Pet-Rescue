module Api
  class AnimalsController < ApplicationController
    before_filter :set_shelter

    def index
      if @shelter
        render json: @shelter.animals
      else
        @animals = Animal.includes(:shelter).all
        render 'index.json.jbuilder'
      end
    end

    def show
      if @shelter
        render json: @shelter.animals.find(params[:id])
      else
        # render json: Animal.find_by(id: params[:id])
        @animal = Animal.includes(:shelter).find_by(id: params[:id])
        @shelter
        render 'show.json.jbuilder'
      end
    end

    def create
      animal = @shelter.animals.new(animal_params)
      if animal.save
        render json: animal, status: 201, location: [:api, animal]
      else
        render json: animal.errors, status: 422
      end
    end

    def update
      animal = @shelter.animals.find(params[:id])
      if animal.update(animal_params)
        head 204
      else
        render json: animal.errors, status: 422
      end
    end

    def destroy
      animal = @shelter.animals.find(params[:id])
      if animal.destroy
        head 204
      else
        render json: animal.errors, status: 422
      end
    end

  private
    def set_shelter
      @shelter = Shelter.find_by(id: params[:shelter_id])
    end

    def animal_params
      params.require(:animal). permit(:specie, :color, :breed, :age, :size, :sex, :name, :note, :photo_url)
    end

  end
end