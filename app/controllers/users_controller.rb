class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end
  
  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end
end