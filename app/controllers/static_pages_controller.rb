class StaticPagesController < ApplicationController

    def home
        
        
    end

    def shop
    end    
    
    def show
        @vip = current_user
        
        @pinglun = @vip.pingluns.build

        @pingluns = @vip.pingluns

        
    end    
    
end
