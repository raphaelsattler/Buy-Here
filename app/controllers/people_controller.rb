class PeopleController < ApplicationController
  def index
    @people = Person.paginate(page: params[:page], per_page: 5)
  end

  def edit; end

  def update; end
end
