class RolesController < ApplicationController
  def index
    @q = Role.ransack(params[:q])
    @roles = @q.result.paginate(per_page: 5, page: params[:page])
  end

  def search
    index
    render :index
  end

  def create
    @role = Role.new(valid_params)
    respond_to do |format|
      format.js
    end
  end

  private

    def valid_params
      params.require(:role).permit(:name)
    end
end
