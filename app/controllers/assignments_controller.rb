class AssignmentsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:assignment].inspect
    end
    
end
