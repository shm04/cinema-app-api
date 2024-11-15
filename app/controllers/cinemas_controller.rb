class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all
    render json: @cinemas
  end

  def show
    @cinema = Cinema.find(params[:id])
    render json: @cinema
  end

  def create
    @cinema = Cinema.new(cinema_params)
    if @cinema.save
      render json: @cinema, status: :created
    else
      render json: @cinema.errors, status: :unprocessable_entity
    end
  end

  def destroy 
    @cinema = Cinema.find(params[:id])
    @cinema.destroy
  end
end
