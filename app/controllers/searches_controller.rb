class SearchesController < ApplicationController
  def new
    @search = Search.new
    category = Product.all
    # @categories = Product.uniq.pluck(:category)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search= Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:title, :brand, :condition, :model, :min_price, :max_price, :date_of_delivery)
  end

end
