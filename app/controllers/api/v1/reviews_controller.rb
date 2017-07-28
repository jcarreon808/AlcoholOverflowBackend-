class Api::V1::ReviewsController < ApplicationController
  before_action :findReview, only:[:show, :destroy]

  def index
    @reviews = Review.all
    render json: @reviews, status: 201
  end

  def create
    @review = Review.create(review_params)
    render json: @review, status: 201
  end

  def show
    render json: @review, status: 201
  end

  def destroy
    @review.destroy
  end

  private

  def review_params
    params.permit(:user_id, :wine_id, :content, :user_rating)
  end

  def findReview
    @review = Review.find(params[:id])
  end

end
