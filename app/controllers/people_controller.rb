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
    if !@person.save
      flash[:error] = "#{@person.errors.full_messages}"
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    if @person.update(person_params)
      flash[:success] = "Person was successfully updated!"
      redirect_to root_path
    else
      flash[:error] = "#{@person.errors.full_messages}"
      redirect_to root_path
    end
  end

  private

    def person_params
      params.require(:person).permit(:email, :name, :cpf, :cnpj, :social_name, :rg, :expediter_rg, :uf_expediter_rg, :profile_id, :buy_intention_id, :user_id)
    end
end
