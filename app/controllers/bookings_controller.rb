class BookingsController < ApplicationController

before_action :set_booking, only: [:show, :edit, :update, :destroy]
before_action :set_goat, only: [:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # find the goat with the goat_id
    @goat = Goat.find(params[:goat_id])
    # set the goat id of the booking
    @booking.goat = @goat
    #@booking.user_id = current_user.id
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_path, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_goat
    @goat = Goat.find(params[:goat_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date, :name, :email, :phone, :date)
  end
end
