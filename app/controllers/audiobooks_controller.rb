class AudiobooksController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  before_action :set_audiobook, only: [:show, :edit, :update, :destroy]

  def index
    @audiobooks = Audiobook.all
  end

  def show
  end

  def new
    @audiobook = Audiobook.new
  end

  def create
    @audiobook = Audiobook.create(audiobook_params)
    if @audiobook.save
      redirect_to audiobook_path(@audiobook)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @audiobook.update(audiobook_params)

    redirect_to audiobook_path(@audiobook)
  end

  def destroy
    @audiobook.destroy

    redirect_to audiobooks_path
  end

  private

  def set_audiobook
    @audiobook = Audiobook.find(params[:id])
  end

  def audiobook_params
    params.require(:audiobook).permit(:title, :author, :description, :duration, :photo, :audio)
  end
end
