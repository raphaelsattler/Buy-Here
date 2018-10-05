class PeopleController < ApplicationController
  def index
    new_person
    @q = Person.ransack(params[:q])
    @people = @q.result.includes(:profile, :buy_intention).paginate(page: params[:page], per_page: 5)
  end

  def new_person
    @new_person = Person.new
  end

  def create
    byebug
    @person = Person.new(person_params)
    if !@person.save
      flash[:error] = "#{@person.errors.full_messages}"
    end
  end

  def edit; end

  def update; end

  private

    def person_params
      params.require(:person).permit(:email, :name, :cpf, :cnpj, :social_name, :rg, :expediter_rg, :uf_expediter_rg, :profile_id, :buy_intention_id, :user_id)
    end
end
