class BooksController < ApplicationController
  def create
    book = Book.create(book_params)
    render json: book, status: :created
  end

  private

  def book_params
    params.require(:book).permit(:title, :resume, :summary, :price, :page_number, :isbn, :publication_date, :category, :author)
  end
end
