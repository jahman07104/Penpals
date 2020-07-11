class UsersController < ApplicationController

  def create   
  end

  private

  def penpal_params 
    params.require(:users).permit(:first_name,last_name, :user_id)

  end

end
