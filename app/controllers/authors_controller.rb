class AuthorsController < ApplicationController
  def create
    author = Author.create!(author_params)
    render json: author, status: :created
  end

  private

  def author_params
    params.require(:author).permit(:name, :email, :description)
  end
end
