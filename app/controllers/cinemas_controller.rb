class CinemasController < ApplicationController
  def index
    @cinemas = Cinema.all
    render json: @cinemas
  end

  def show
    @cinema = Cinema.find(params[:id])
    render json: @cinema
  end
end
