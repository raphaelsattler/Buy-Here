class RolesController < ApplicationController
  def index
  	@q = Role.ransack(params[:q])
    @roles = @q.result.paginate(per_page: 5, page: params[:page])
  end

  def search
    index
    render :index
  end
end