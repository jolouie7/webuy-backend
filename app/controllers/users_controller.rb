class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    users = User.all
    render json: { users: users }
  end

  def show
    user = User.find(params[:id])
    render json: { user: user }
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    # byebug
    @user = User.create!(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    user = User.find(params[:id])
    order.update(user_params)
    render json: { user: user }
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
