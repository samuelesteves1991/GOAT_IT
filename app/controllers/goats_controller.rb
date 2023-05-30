class GoatsController < ApplicationController
  before_action :set_goat, only: %i[show edit update destroy]

  def index
    @goats = Goat.all
  end

  def show
  end

  def create
    @goat = Goat.new(goat_params)
    if @goat.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @goat.update(goat_params)
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @goat.destroy
    redirect_to garden_url, notice: "Goat was successfully deleted!"
  end

  private

  def set_goat
    @goat = Goat.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
