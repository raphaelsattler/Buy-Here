class UsersController < ApplicationController
  def index
    new_user
    @q = User.ransack(params[:q])
    @users = @q.result.includes(:profile, :buy_intention).paginate(page: params[:page], per_page: 5)
  end

  def new_user
    @new_user = Eser.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      format.js
    end
  end

  def edit
    @user = User.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @user_params = user_params
    @user = User.find(params[:id])
    @user.update(user_params)
    respond_to do |format|
      format.js
    end
  end

  private

    def user_params
      params.require(:user).permit()
    end
end
