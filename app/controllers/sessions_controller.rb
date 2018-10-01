class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(session_params[:password])
      sign_in user
      flash[:success] = t('activerecord.session.form.flash.login_success')
      redirect_to user
    else
      flash.now[:alert] = t('activerecord.session.form.flash.login_error')
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end