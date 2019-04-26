class UsersController < Clearance::UsersController

  def create
    @user = user_from_params
    @user.points = 0

    if @user.save
      sign_in @user
      redirect_to assignments_path
    else
      render template: 'users/new'
    end 
  end 
  
  def new 
    @user = User.new
  end
  
  def edit
    
  end

  
  
  private

  def user_from_params
    user_params = params[:user] || Hash.new
    username = user_params.delete(:username)
    email = user_params.delete(:email)
    password = user_params.delete(:password)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.username = username
      user.email = email
      user.password = password
    end
  end
end