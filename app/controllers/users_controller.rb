class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users 
  end

  def create 
    user = User.create(user_params)
    redirect_back fallback_location: ''
  end

  def show
    user = User.find(params[:id])
    render json: users, 
      include: [:penpals]
      #status: 200
  end

  private

  def user_params
    params.require(:user).permit(:name)
    
  end
end
