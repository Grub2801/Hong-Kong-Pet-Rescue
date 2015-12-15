module Api
  class SheltersController < ApplicationController
    # before_action :authenticate_shelter!, only: [:create, :update, :destroy]
    before_action :set_shelter, only: [:show, :update, :destroy]

    def index # public
      render json: Shelter.all
    end

    def show # public
      render json: @shelter
    end

    def create # only for shelters
      shelter = Shelter.new(shelter_params)
      if shelter.save
        render json: shelter, status: 201
      else
        render json: shelter.errors, status: 422
      end
    end

    def update # only for shelters
      if @shelter.update(shelter_params)
        head 204
      else
        render json: @shelter.errors, status: 422
      end
    end

    def destroy # only for shelters
      if @shelter.destroy
        head 204
      else
        render json: @shelter.errors, status: 422
      end
    end

  private
    def set_shelter
      @shelter = Shelter.find_by(id: params[:id])
      if @shelter.nil?
        render json: {message: "Shelter Not Found"}, status: 404
      end
    end

    def shelter_params
      params.require(:shelter).permit(:name, :address, :location, :phone, :email, :website, :donation_info, :description, :image_url)
    end
  end
end