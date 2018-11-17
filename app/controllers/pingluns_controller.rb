class PinglunsController < ApplicationController

    def index
        @pingluns = Pinglun.paginate(page: params[:page]).order('created_at DESC')
        if params[:search]
            @pingluns = Pinglun.search(params[:search]).order('created_at DESC')
          else
            @pingluns = Pinglun.all.order('created_at DESC')
          end
        
    end    

    def create
        @pinglun = current_user.pingluns.build(pinglun_params)
        
        if @pinglun.save
            redirect_to show_path
        else
            render 'static_pages/home'  
        end   
    end
    
    def destroy
        @pinglun = Pinglun.find_by(params[:vip_id])
        @pinglun.destroy
        redirect_to index_path
    end 
    
    private
       def pinglun_params
        params.require(:pinglun).permit(:content, :status)
       end 
end

