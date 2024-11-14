class SeatsController < ApplicationController
  def index
    @seats = Seat.all
    render json: @seats
  end

  def show
    @seat = Seat.find(params[:id])
    render json: @seat
  end
end
