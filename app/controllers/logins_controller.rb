class LoginsController < ApplicationController
  def new
  end

  def create
    vip = Vip.find_by(email:params[:login][:email].downcase)
    if vip && vip.authenticate(params[:login][:password])
      log_in(vip)
      redirect_to vip
    else
      render 'new'
    end     
    
  end  

  def destory
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url
  end  
end
