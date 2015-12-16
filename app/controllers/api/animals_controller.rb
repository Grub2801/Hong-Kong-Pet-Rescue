module Api
  class AnimalsController < ApplicationController
    before_action :authenticate_shelter!, only: [:create, :udpate, :destroy]
    before_action :set_shelter, only: [:create, :update, :destroy]
    before_action :set_shelter_animal, only: [:update, :destroy]
    # before_filter :process_params, only: [:create, :update]


    def index # public
      if params[:shelter_id]
        set_shelter
        render json: @shelter.animals
      else
        @animals = Animal.includes(:shelter).all
        render 'index.json.jbuilder'
      end
    end

    def show # public
      if params[:shelter_id]
        set_shelter
        render json: @shelter.animals.find(params[:id])
      else
        @animal = Animal.includes(:shelter).find_by(id: params[:id])
        render 'show.json.jbuilder'
      end
    end

    def create # only for shelter
      animal = @shelter.animals.new(animal_params)
      if animal.save
        render json: animal, status: 201
      else
        render json: animal.errors, status: 422
      end
    end

    def update # only for shelter
      if @animal.update(animal_params)
        head 204
      else
        render json: @animal.errors, status: 422
      end
    end

    def destroy # only for shelter
      if @animal.destroy
        head 204
      else
        render json: @animal.errors, status: 422
      end
    end

  private

    def process_params
      binding.pry

      params[:animal] = JSON.parse(params[:animal]).with_indifferent_access
      if params[:file]
        params[:animal][:avatar] = params[:file]
      end
    end

    def set_shelter
      @shelter = Shelter.find_by(id: params[:shelter_id])
      if @shelter.nil?
        render json: {message: "Shelter Not Found"}, status: 404
      end
    end

    def set_shelter_animal
      @animal = @shelter.animals.find_by(id: params[:id])
      if @animal.nil?
        render json: {message: "Animal Not Found"}, status: 404
      end
    end

    def animal_params
      params.permit(:specie, :color, :breed, :age, :size, :sex, :name, :note, :avatar)
    end

  end
end