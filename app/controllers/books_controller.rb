class BooksController < ApplicationController
  public
    def index
      books = Book.all

      render json: books
    end
end
