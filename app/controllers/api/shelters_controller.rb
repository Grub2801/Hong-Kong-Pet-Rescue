module Api
  class SheltersController < ApplicationController

    def index
      render json: Shelter.all
      # render json: {message: 'Resource not found'}
    end

    def show
      render json: Shelter.find(params[:id])
    end

    def create
      shelter = Shelter.new(shelter_params)
      if shelter.save
        render json: shelter, status: 201, location: [:api, shelter]
      else
        render json: shelter.errors, status: 422
      end
    end

    def update
      shelter = Shelter.find(params[:id])
      if shelter.update(shelter_params)
        head 204
      else
        render json: shelter.errors, status: 422
      end
    end

    def destroy
      shelter = Shelter.find(params[:id])
      shelter.destroy
      head 204
    end

  private
    def shelter_params
      params.require(:shelter).permit(:name, :address, :location, :phone, :email, :website, :donation_info, :description, :image_url)
    end

  end
end