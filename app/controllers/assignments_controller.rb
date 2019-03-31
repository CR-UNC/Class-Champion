class AssignmentsController < ApplicationController
    def show
        @assignment = Assignment.find(params[:id])
    end
    
    def new
    end
    
    def create
        @assignment = Assignment.new(assignment_params)
        
        @assignment.save
        redirect_to @assignment
    end
    
end

private
    def assignment_params
            params.require(:assignment).permit(:title, :text, :difficulty,
                                              :Goalgrade, :Due )
    end