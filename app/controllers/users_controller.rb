class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if(user.save)
      redirect_to users_path
      flash[:success] = "Thanks for Creating an Account!"
    else
      render 'users/new'
      flash[:error] = "There were errors"
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

private

  def user_params
    parans = params.require(:user).permit(:name, :email, :password,
                        :password_confirmation)

  end

end
