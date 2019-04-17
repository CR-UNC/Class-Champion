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
        @user = current_user
        @incentive = @user.incentives.create(incentive_params)
        
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
        @incentive = incentive.find(params[:id])
         @user = current_user
        @user.points = @user.points - @incentive.cost
        @user.save
        
        @incentive.destroy
        redirect_to incentives_path
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