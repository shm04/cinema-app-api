class ShowsController < ApplicationController
  def index
    cinema = Cinema.find(params[:cinema_id])
    movie = cinema.movies.find(params[:movie_id])
    shows = movie.shows

    render json: shows
  end

  def show
    @show = Show.find(params[:id])
    render json: @show
  end

  def create
    @show = Show.new(show_params)
    @show.movie_id = params[:movie_id]

    if @show.save
      render json: @show, status: :created
    else
      render json: @show.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
  end

  private

  def show_params
    params.require(:show).permit(:movie_id, :room_id, :started, :finished)
  end
end
