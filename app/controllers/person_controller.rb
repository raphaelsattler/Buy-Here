class PersonController < ApplicationController
  def index
    @q = Person.ransack(valid_params)
    @people = @q.result.includes(:profile, :buy_intention).paginate(page: valid_params[:page], per_page: 5)
  end

  def edit; end

  def update; end

  def search
    index
    render :index
  end

  private

    def valid_params
      params.require(:q).permit(:page, :name_cont, :social_name_cont, :rg_cont, :cpf_cont, :email_cont, :profile_name_cont, :buy_intention_name_cont)
    end
end
