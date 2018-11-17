class YudingsController < ApplicationController
    def new
        @yuding = Yuding.new
        @yudings = Yuding.all.order('created_at DESC')
    end
    
    
    def create
       @yuding = Yuding.new(yuding_params)
       if @yuding.save
        redirect_to @yuding

       else
        render 'static_pages/home'  

       end
    end 

    def index
        @yudings = Yuding.all.order('created_at DESC')
        @yuding = Yuding.find_by(params[:id])
        @yuding.update_attributes(status: "2")
    end    
    
    def update
        @yuding = Yuding.find_by(id: params[:yuding][:id])
        @yuding.update_attributes(status: "2")
        redirect_to @yuding
        
    end    
    
    private
    def yuding_params
       params.require(:yuding).permit(:zhuohao, :starttime, :endtime, :status)
    end  
end
