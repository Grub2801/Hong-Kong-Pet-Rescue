module Api
  class FavoritesController < ApplicationController

    before_action :authenticate_shelter!
    # before_action :favorite, only: [:destroy]

    def index
      render json: current_user.favorites
    end

    def create
      @favorite = current_user.favorite.new
      @favorite.user = current_user
      favorite.animal = Animal.find(params[:favorite][animal._id])
      if @favorite.save
        render json: favorite, status: 201, location: [:api, favorite]
      else
        render json: favorite.errors, status: 422
      end
    end

    def destroy
      favorite = Favorite.find(params[:id])
      @favorite.destroy
      head 204
    end

    private
    # def favorite
    #   unless @favorite = current_user.favorites.find(params[:id])
    #     flash[:alert] = 'Favorite not found.'
    #     redirect_to root_url
    #   end
    # end

  end
end