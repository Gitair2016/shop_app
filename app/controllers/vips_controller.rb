class VipsController < ApplicationController
  def new
    @vip = Vip.new
  end

  def create
    @vip = Vip.new(vip_params)
    if @vip.save
      redirect_to @vip
    else
      render 'new'  
    end
  end    

  def show
    @vip = Vip.find(params[:id])
  end  
   


  private
    def vip_params
       params.require(:vip).permit(:name, :email, :password, :password_confirmation)
    end  





end
