class UsersController < ApplicationController
  before_filter :login_required
  
  def show
    @userpage = true
    @user = User.find_by(id: params[:id])
  end

  def new
    @userpage = true
  end

  def create
    @userpage = true
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password = params[:password_confirmation]
    @user.save
    redirect_to "/sessions/new"
  end

  def edit
    @userpage = true
    @user = User.find_by(id: params[:id])
  end

  def update
    @userpage = true
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password = params[:password_confirmation]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @userpage = true
    @user = User.find_by(id: params[:id])
    reset_session
    @user.destroy
    redirect_to "/session/new"
  end
end