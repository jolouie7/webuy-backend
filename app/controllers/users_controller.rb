class UsersController < ApplicationController
  def index
    users = User.all
    # render json: UserSerializer.new(users).serialized_json
    render json: { users: users }
  end

  def show
    user = User.find(params[:id])
    render json: UserSerializer.new(user).serialized_json
  end

  def create
    user = User.create(user_params)
    render json: UserSerializer.new(user).serialized_json
  end

  def update
    user = User.find(params[:id])
    order.update(user_params)
    render json: UserSerializer.new(user).serialized_json
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email, :bio, :password, :password_confirmation)
  end
end
