class CaiwusController < ApplicationController

    def new
      @caiwu = Caiwu.new
      @caiwus = Caiwu.all 
    end    

    def index
       
       @total = Caiwu.sum("jine")
       
       if params[:start_date] 
      
        ddd = params[:end_date][:day]
        eee = ddd.to_i + 1
        aaa= params[:start_date][:year]+"-"+params[:start_date][:month]+"-"+params[:start_date][:day]
        bbb=params[:end_date][:year]+"-"+params[:end_date][:month]+"-"+eee.to_s
        @caiwus = Caiwu.where("created_at>= ? AND created_at<=?", aaa, bbb)
       else
        @caiwus = Caiwu.all
       end
    end


    def create
      @caiwu = Caiwu.new(params.require(:caiwu).permit(:zhuohao, :jine))
      if @caiwu.save
        redirect_to @caiwu
      else
        render 'new'  
      end

    end    
end
