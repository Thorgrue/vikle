class ReviewsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  before_action :review_params, only: [:create]
  before_action :set_review, only: [:destroy]
  before_action :set_audiobook, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.audiobook = @audiobook
    @review.user = current_user
    if @review.save
      redirect_to audiobook_path(@audiobook)
    else
      render :new
    end
  end

  def destroy
    @review.destroy

    redirect_to audiobook_path(@review.audiobook)
  end

  private

  def set_audiobook
    @audiobook = Audiobook.find(params[:audiobook_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
