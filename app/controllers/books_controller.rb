class BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = current_user.books.new(book_params)
    if @book.save
      render json: @book
    else 
      render error: {error: 'Unable to create book. '}, status: 400
    end
  end
end
