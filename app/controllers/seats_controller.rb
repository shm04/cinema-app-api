class SeatsController < ApplicationController
  def index
    @seats = Seat.all
    render json: @seats
  end

  def show
    @seat = Seat.find(params[:id])
    render json: @seat
  end

  def create
    @seat = Seat.new(seat_params)
    if @seat.save
      render json: @seat, status: :created
    else
      render json: @seat.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy
  end
end
