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
    
    def edit
        @incentive = Incentive.find(params[:id])
    end
    
    def update
        @incentive = Incentive.find(params[:id])
        
        if @incentive.update(incentive_params)
            redirect_to @incentive
        else
            render 'edit'
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