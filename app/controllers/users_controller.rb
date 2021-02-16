class UsersController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

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


private
def move_to_index
  unless user_signed_in?
    redirect_to action: :show
  end
end