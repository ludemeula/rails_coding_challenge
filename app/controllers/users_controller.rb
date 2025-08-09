
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user]) # erro: falta .require e .permit
    if @user.save
      redirect_to @user, notice: 'User created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(params[:user]) # erro: falta .require e .permit
      redirect_to @user, notice: 'User updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User deleted.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
