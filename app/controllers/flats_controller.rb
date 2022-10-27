class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flats_params)
    @flat.save
    redirect_to flats_path, status: :see_other
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    if params[:completed] == "true"
      @flat.completed = true
    end
    @flat.update(flats_params)
    redirect_to flat_path, status: :see_other
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flats_params
    params.require(:flat).permit(:title, :details, :completed)
  end
end
