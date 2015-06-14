class UsersController < ApplicationController

	# grab the users
  def index
    @users = User.all
    render :index
  end

    def new
    # we need to make
    # a new user
    # to pass to the 
    # form later
    @user = User.new
    render :new
  end

  #create the new user
  def create
    user = User.new(user_params)
    unless user.save()
      redirect_to sign_up_path
    else
      login(user)
      redirect_to user_path(user)
    end
  end

  #show the user after created
  def show
    @user = User.find(params[:id])
    render :show
  end
  #After a user is signed up they should be logged in.
  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" # <-- go to show
  end


end
