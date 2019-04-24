class HomepageController < ApplicationController
  def index
     @user = current_user
        if @user
            redirect_to assignments_path
            
        end
  end
end
