class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: "Flat was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :category, :phone_number)
  end

end
