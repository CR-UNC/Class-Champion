class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
    end
    
    def create
        @user = current_user
        @assignment = @user.assignments.create(assignment_params)
        if @assignment.save
            @assignment.points = (10 * @assignment.difficulty) + (@assignment.Goalgrade/2).round
            @assignment.save
            redirect_to @assignment
       else
           render 'new'
        end
        #@assignment.save
       # redirect_to @assignment
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
        @user = current_user
        if @assignment.update(assignment_params)
            @assignment.points = (10 * @assignment.difficulty) + (@assignment.Goalgrade/2).round
            @user.points = @assignment.points + @user.points
            @user.save
            flash[:success] = "Congratulations! You earned " + @assignment.points.to_s + " points!"
            @assignment.destroy
            redirect_to assignments_path
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