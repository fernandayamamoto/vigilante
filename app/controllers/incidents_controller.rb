class IncidentsController < ApplicationController
  def show
    @incidents = Incident.find(params[:id])
    # The `geocoded` scope filters only incidents with coordinates
    @markers = @incidents.geocoded.map do |incident|
    {
      lat: incident.latitude,
      lng: incident.longitude,
      info_window: render_to_string(partial:

      "info_window", locals: { incident: incident}),
      image_url:
      helpers.asset_url("https://res.cloudinary.com/dwvglguvp/image/upload/c_crop,h_210/v1669731800/pin_ladrao-removebg-preview_gdzctb.png")
    }
    end
  end

  def new
    @incident = Incident.new
  end

  def create
    #Falta a parte do geocoding
    @incident = Incident.new(incident_params)
    if @incident.save
      redirect_to @incident
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def incident_params
    params.require(:incident).permit(:incident_type, :location, :description)
  end
end
