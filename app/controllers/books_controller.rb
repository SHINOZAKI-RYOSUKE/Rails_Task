class BooksController < ApplicationController

  def index
    @book_all = Book.all
    @book_new = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def show
  end

  def edit
  end

  def destriy
  end




  private
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
