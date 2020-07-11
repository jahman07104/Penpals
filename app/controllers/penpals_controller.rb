class PenpalsController < ApplicationController
  def create 
    binding.pry
      penpal = Penpal.create(penpal_params)
      if penpal.vaid?
        render json: penpal
      else 
        render json(error: "Penpal not valid")
      end  
  end

  def show 
    penpal = Penpal.find(params[:id])  
  end

  def index
    penpal = Penpal.all 
    render json:penpal 
  end

  private

  def penpal_params
    params.require(:penpal).permit(:first_name,:last_name,:email_address,:user_id)   
  end

end
