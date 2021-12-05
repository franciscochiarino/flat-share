class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)
    byebug

    if @user.save
      flash[:notice] = 'User created'
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(edit_user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def create_user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:first_name, :last_name, :avatar)
  end
end