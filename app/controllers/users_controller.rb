class UsersController < ApplicationController

  def create   
    users = User.all
    render json: users, 
    include: [:penpals]
  end

  def show
    user = User.find(params[:id])
    render json: users, 
    include: [:penpals]
    
    #status: 200
  end

  private

  def penpal_params 
    params.require(:penpal).permit(:name,:city,:email,:photo)

  end

  

end
