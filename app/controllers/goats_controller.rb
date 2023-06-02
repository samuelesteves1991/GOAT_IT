class GoatsController < ApplicationController
  before_action :set_goat, only: %i[show edit update destroy]

  def index
    @goats = Goat.all
  end

  def show
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    if @goat.save
      redirect_to goats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @goat.update(goat_params)
      redirect_to goats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @goat.destroy
    redirect_to goats_path, status: :see_other, notice: "Goat was successfully deleted!"
  end

  private

  def set_goat
    @goat = Goat.find(params[:id])
  end


  def goat_params
    params.require(:goat).permit(:name, :age, :milk, :horn_massage, :foot_massage, :whool, :pet_friendly, :photo)
  end

end
