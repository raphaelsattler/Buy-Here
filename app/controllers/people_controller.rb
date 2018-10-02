class PeopleController < ApplicationController
  def index
    @q = Person.ransack(params[:q])
    @people = @q.result.includes(:profile, :buy_intention).paginate(page: params[:page], per_page: 5)
  end

  def edit; end

  def update; end

  def search
    index
    render :index
  end
end
