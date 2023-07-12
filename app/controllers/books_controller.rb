class BooksController < ApplicationController

  def index
    # if current_user.role == user
      @books = Book.all
      render json: @books
    # else
    #   @users = User.where(role: 'user')
    # end
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

  def update
    @book = Book.find(params[:id])
  end
end
