class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: valid_params[:email])
    if user && user.authenticate(valid_params[:password])
      sign_in user
      flash[:success] = t("activerecord.session.form.flash.login_success")
      redirect_to person_index_path
    else
      flash.now[:alert] = t("activerecord.session.form.flash.login_error")
      render "new"
    end
  end

  def destroy
    sign_out
    flash[:success] = t("activerecord.session.form.flash.exit")
    redirect_to new_login_path
  end

  private

    def valid_params
      params.require(:session).permit(:email, :password)
    end
end
