module Api
  class FavoritesController < ApplicationController
    # before_action :authenticate_user!
    # before_action :favorite, only: [:destroy]

    def index
      render json: current_user.animals
    end

    def create
      favorite = current_user.favorites.new(favorite_params)
      if favorite.save
        render json: favorite, status: 201, location: [:api, favorite]
      else
        render json: favorite.errors, status: 422
      end
    end

    def destroy
      favorite = Favorite.find(params[:id])
      favorite.destroy
      head 204
    end

    private
    def favorite_params
      params.permit(:animal_id)
    end

  end
end