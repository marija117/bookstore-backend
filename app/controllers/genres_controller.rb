class GenresController < ApplicationController
  before_action :set_genre, only: [:show]

  def index
    genres = Genre.all

    render json: genres.as_json(:include => [:books])
  end

  def show
    render json: @genre.as_json(:include => [:books])
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.permit(:name)
  end
end
