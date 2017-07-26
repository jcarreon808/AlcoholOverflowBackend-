class Api::V1::BeersController < ApplicationController
  def show
    @beer = Beer.find(params[:id])
    render json: @beer, status: 201
  end
end
