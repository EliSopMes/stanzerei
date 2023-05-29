class RequestsController < ApplicationController
  def new
    @request = Request.new
    @flats = Flat.all.sort
  end

  def create
    @flat = Flat.find(params[:flat_id].to_i)
    @request = Request.new(request_params)
    @request.flat = @flat
    if @request.save
      # requestMailer.with(request: @request).request_email.deliver_later
      p NotifierMailer.alert_request.deliver_later
      redirect_to flat_path(@flat)

      # format.html { redirect_to(@flat, notice: 'request was sent successfully.') }
      # format.json { render json: @flat, status: :created, location: @flat }
    else
      # format.html { render action: 'new' }
      # format.json { render json: @request.errors, status: :unprocessable_entity }

      render :new, status: :bad_request
    end
  end

  private

  def request_params
    params.require(:request).permit(:flat_id, :from, :to, :number_guests, :first_name, :last_name, :house_number, :street,
                                    :postal_code, :city, :phone, :email, :message)
  end
end
