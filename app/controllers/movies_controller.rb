class MoviesController < ApplicationController
  def index
    cinema = Cinema.find(params[:cinema_id])
    movies = Movie.joins(:shows).where(shows: { room: cinema.rooms }).distinct
    render json: movies
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end
end
