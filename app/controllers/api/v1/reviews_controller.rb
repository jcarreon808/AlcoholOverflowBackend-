class Api::V1::ReviewsController < ApplicationController
  before_action :findReview, only:[:show, :destroy]

  def index
    @reviews = Review.all
    render json: @reviews, status: 201
  end

  def create
    @review = Review.create(user_id:params[:user_id], wine_id:params[:wine_id],content:params[:content])
    render json: @review, status: 201
  end

  def show
    render json: @review, status: 201
  end

  def destroy
    @review.destroy
  end

  private

  def findReview
    @review = Review.find(params[:id])
  end

end
