class PasswordResetsController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  before_action :check_user, only: [:edit, :update]
  before_action :check_expiration, only: [:edit, :update]

  def new
  end

  def create
    @user = User.find_by(email: valid_params[:email])
    if @user
      @user.create_reset_digest
      @user.send_password_reset_mail
      flash[:success] = t("password_reset.form.forgot.flash.success")
      redirect_to new_login_path
    else
      flash[:error] = t("password_reset.form.forgot.flash.not_found_user")
      render "new"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(valid_params)
      sign_in @user
      @user.update_attribute(:reset_digest, nil)
      flash[:success] = t("activerecord.session.form.flash.login_success")
      redirect_to @user
    else
      render "edit"
    end
  end

  private

    def valid_params
      params.require(:password_reset).permit(:email, :password, :password_confimation)
    end

    def get_user
      @user = User.find_by(email: params[:email])
    end

    def check_user
      unless @user && @user.password_reset?(params[:id])
        redirect_to new_login_path
      end
    end

    def check_expiration
      if @user.password_reset_expired?
        flash[:danger] = t("password_reset.form.reset.flash.expired")
        redirect_to new_password_rest_url
      end
    end
end
