class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result.paginate(per_page: 5, page: params[:page])
  end

  def search
    index
    render :index
  end

  def create
    @product = Product.new(valid_params)
    respond_to do |format|
      format.js
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
    respond_to do |format|
      format.js
    end
  end

  private

    def valid_params
      params.require(:product).permit(:code, :name, :value, :description)
    end
end
