class PenpalsController < ApplicationController
  def index
    penpals = Penpal.all 
    render json: penpals 
  end

  def create 
  #  binding.pry
      penpal = Penpal.create(penpal_params)
      if penpal.valid?
        render json: penpal
      else 
        render json: {error: "Penpal not valid"}
      end  
  end

  def show 
    penpal = Penpal.find(params[:id])  
  end

 

  private

  def penpal_params
    params.require(:penpal).permit(:name, :city, :email, :photo)   
  end

end
