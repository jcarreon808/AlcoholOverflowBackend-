class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(username: params[username], email: params[email], password: params[password])
    render json: @user, status: 201
  end

end
