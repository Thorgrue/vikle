class FavoritesController < ApplicationController
  before_action :set_audiobook, only: [:create]

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.audiobook = @audiobook
    @favorite.save
    redirect_to audiobook_path(@audiobook)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to audiobook_path(@favorite.audiobook)
  end

  def show
    @favorites = Favorite.where(user: current_user)
    @fav_audiobooks = []
    @favorites.each do |fav|
      audiobook = Audiobook.find(fav.audiobook_id)
      @fav_audiobooks << audiobook
    end
  end

  private

  def set_audiobook
    @audiobook = Audiobook.find(params[:audiobook_id])
  end
end
