module Api
  class FavoritesController < ApplicationController
    # before_action :authenticate_user!
    before_action :set_favorite, only: [:destroy]

    def index
      render json: current_user.animals
    end

    def create
      favorite = current_user.favorites.new(favorite_params)
      if favorite.save
        render json: favorite, status: 201
      else
        render json: favorite.errors, status: 422
      end
    end

    def destroy
      if @favorite.destroy
        head 204
      else
        render json: @favorite.errors, status: 422
      end
    end

    private
    def set_favorite
      @favorite = Favorite.find(params[:id])
      if @favorites.nil?
        render json: {message: "Favorite not found"}, status: 404
      end
    end

    def favorite_params
      params.permit(:animal_id)
    end

  end
end