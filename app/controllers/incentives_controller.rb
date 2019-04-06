class IncentivesController < ApplicationController
    def show
        @incentive = Incentive.find(params[:id])
    end
    
    
    def new
        @incentive = Incentive.new
    end
    
    
    def create
        @incentive = Incentive.new(incentive_params)
        
        @incentive.save
        redirect_to @incentive
    end
    
    
    
    
end

private 
def incentive_params
    params.require(:incentive).permit(:title, :text, :cost, :image)
end