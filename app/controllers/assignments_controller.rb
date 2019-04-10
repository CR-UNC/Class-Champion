class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
    end
    
    def create
        @assignment = Assignment.new(assignment_params)
        @assignment.points = (10 * @assignment.difficulty) + (@assignment.Goalgrade/2).round
        @assignment.save
        redirect_to @assignment
    end
    
    def show
        @assignment = Assignment.find(params[:id])
    end
    
    def new
        @assignment = Assignment.new
    end
    
    
    
    def edit
        @assignment = Assignment.find(params[:id])
    end
    
    def update
        @assignment = Assignment.find(params[:id])
        if @assignment.update(assignment_params)
            redirect_to @assignment
        else
            render 'edit'
        end
    end
    def destroy
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        
        redirect_to assignments_path
    end
end

private
    def assignment_params
            params.require(:assignment).permit(:title, :text, :difficulty,
                                              :Goalgrade, :Due )
    end