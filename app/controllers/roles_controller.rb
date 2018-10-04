class RolesController < ApplicationController
  def index
    @roles = Role.all.paginate(per_page: 5, page: params[:page])
  end
end