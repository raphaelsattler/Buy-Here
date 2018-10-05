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
    @person = Person.new(person_params)
    respond_to do |format|
      format.js
    end
  end

  def edit
    @person = Person.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @person_params = person_params
    @person = Person.find(params[:id])
    @person.update(person_params)
    respond_to do |format|
      format.js
    end
  end

  private

    def person_params
      params.require(:person).permit(:email, :name, :cpf, :cnpj, :social_name, :rg, :expediter_rg, :uf_expediter_rg, :profile_id, :buy_intention_id, :user_id)
    end
end
