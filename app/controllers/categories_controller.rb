class CategoriesController < ApplicationController
  def create
    category = Category.create!(category_params)
    render json: category, status: :created
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
