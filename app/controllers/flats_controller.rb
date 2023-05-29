class FlatsController < ApplicationController
  def index
    @flats = Flat.all.sort
  end

  def show
    @flat = Flat.find(params[:id])
    @request = Request.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :bad_request
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :square_meters, :price, photos: [])
  end
end
