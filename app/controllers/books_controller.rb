class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:book_code, :publisher_code, :book_title, :sender_publisher_code)
  end

end
