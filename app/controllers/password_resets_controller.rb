class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: reset_params[:email])
    if @user
      @user.create_reset_digest
      flash[:success] = t("password_reset.form.forgot.flash.success")
      redirect_to new_login_path
    else
      flash[:error] = t("password_reset.form.forgot.flash.not_found_user")
      render "new"
    end
  end

  private

    def reset_params
      params.require(:password_reset).permit(:email, :password)
    end
end
