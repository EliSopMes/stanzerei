class WohnungsController < ApplicationController
  def index
    @wohnungen = Wohnung.all
  end

  def show
    @wohnung = Wohnung.find(params[:id])
    @anfrage = Anfrage.new
  end

  def new
    @wohnung = Wohnung.new
  end

  def create
    @wohnung = Wohnung.new(wohnungen_params)
    if @wohnung.save
      redirect_to wohnung_path(@wohnung)
    else
      render :new, status: :bad_request
    end
  end

  private

  def wohnungen_params
    params.require(:wohnung).permit(:name, :square_meters, :preis, :wohnzimmer, :bad, :balkon,
                                    :esszimmer, :galerie, :küche, :schlafzimmer, :photos, :galerie?, :wohnzimmer?,
                                  :anzahl_zimmer)
  end
end
