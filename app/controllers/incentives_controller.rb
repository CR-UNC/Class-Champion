class IncentivesController < ApplicationController
    def index
        @incentives = Incentive.all
    end
    
    def show
        @incentive = Incentive.find(params[:id])
    end
    
    
    def new
        @incentive = Incentive.new
    end
    
    
    def create
        @incentive = Incentive.new(incentive_params)
        
        if @incentive.save
        redirect_to @incentive
    else
        render 'new'
        end
    
    end
    
    def destroy
        @incentive = Incentive.find(params[:id])
        @incentive.destroy
        
        redirect_to incentives_path
    end
    
end

private 
def incentive_params
    params.require(:incentive).permit(:title, :text, :cost, :image)
end