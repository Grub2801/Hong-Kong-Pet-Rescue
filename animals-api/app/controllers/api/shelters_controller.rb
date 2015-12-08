module Api
  class SheltersController < ApplicationController
    def index
      render json: Shelter.all
      # render json: {message: 'Resource not found'}
    end

    def show
      render json: Shelter.find(params[:id])
    end

    def new
      @shelter = Shelter.new
    end

    def create
      @shelter = Shelter.new(shelter_params)
      if @shelter.save
        render json: Shelter.all
      else
        render json: Shelter.all
      end
    end

  private
    def shelter_params
      params.require(:shelter).permit(:name, :address, :location, :phone, :email, :website, :donation_info, :description, :image_url)
    end

  end
end