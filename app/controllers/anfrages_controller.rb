class AnfragesController < ApplicationController
  def new
    @anfrage = Anfrage.new
    @wohnung = Wohnung.find(params[:wohnung_id])
  end

  def create
    @wohnung = Wohnung.find(params[:wohnung_id])
    @anfrage = Anfrage.create(anfrage_params)
    if @anfrage.save
      redirect_to wohnung_path(@wohnung)
    else
      render :new, status: :bad_request
    end
  end

  private

  def anfrage_params
    params.require(:anfrage).permit(:wohnung_id, :von, :bis, :anzahl, :vorname_nachname, :strass, :plz_ort, :telefon, :email, :nachricht)
  end
end
