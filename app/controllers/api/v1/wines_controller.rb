class Api::V1::WinesController < ApplicationController

  def index
    @wines=Wine.all
    render json: @wines, status: 201
  end

  def create
    params['wines'].each do |wine|
      @wine = Wine.create(name:wine['name'], region:wine['region'], winery:wine['winery'], varietal:wine['varietal'], wine_type:wine['type'],
      link:wine['link'], image:wine['image'], vintage:wine['vintage'], price:wine['price'], rank:wine['snoothrank'], user_vote:wine['user_vote'])
    end
    render json: @wine, status: 201
  end

  def show
    @wine = Wine.find(params[:id])
    render json: @wine, status: 201
  end

  def update
    @wine = Wine.find(params[:id])
    @wine.update(wine_params)
    render json: @wine, status: 201
  end

  private
  def wine_params
    params.permit(:name, :region, :winery, :varietal, :wine_type, :link, :image, :vintage, :price, :rank, :user_vote)
  end

end
