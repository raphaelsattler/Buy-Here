class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result.paginate(per_page: 5, page: params[:page])
  end

  def search
    index
    render :index
  end
end
