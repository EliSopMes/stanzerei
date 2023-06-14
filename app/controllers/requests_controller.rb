class RequestsController < ApplicationController
  def new
    @request = Request.new
    @flat = @request.flat
    @flats = Flat.all.sort
  end

  def create
    params["flat_id"].present? ? @flat = Flat.find(params["flat_id"].to_i) : @flat = Flat.find(params["request"]["flat"].to_i)
    @request = Request.new(request_params)
    @request.flat = @flat
    if @request.save
      # requestMailer.with(request: @request).request_email.deliver_later
      NotifierMailer.alert_request(@request).deliver_now
      redirect_to flat_path(@flat, requested: "yes")

      # format.html { redirect_to(@flat, notice: 'request was sent successfully.') }
      # format.json { render json: @flat, status: :created, location: @flat }
    else
      # format.html { render action: 'new' }
      # format.json { render json: @request.errors, status: :unprocessable_entity }
      render :new, status: :bad_request
    end
  end

  # Check if flat is available in the range of a request
  def available(request)
    @flat = Flat.find(params['request']['flat_id'].to_i)
    @request = request
    @requests_for_flat = Request.where(flat_id: @flat.id)
    @requests_for_flat.each do |request|
      if request.from..request.to === @request.from
        @available = "Wohnung bereits für diesen Zeitpunkt angefragt, verschiebe dein Startdatum #{(request.to - @request.from).to_i} nach hinten"
      elsif request.from..request.to === @request.to
        @available = "Wohnung bereits für diesen Zeitpunkt angefragt, verschiebe dein Enddatum #{(@request.to - request.from).to_i} nach vorne"
      end
    end
  end

  private

  def request_params
    params.require(:request).permit(:flat_id, :from, :to, :number_guests, :first_name, :last_name, :house_number, :street,
                                    :postal_code, :city, :phone, :email, :message)
  end
end
