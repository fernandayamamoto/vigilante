class IncidentsController < ApplicationController
  def show
    @incident = Incident.find(params[:id])
    @markers = [
      {
        lat: @incident.latitude,
        lng: @incident.longitude,
        info_window: render_to_string(partial: "pages/info_window", locals: {incident: @incident}),
        image_url: helpers.asset_url("https://res.cloudinary.com/dwvglguvp/image/upload/c_crop,h_210/v1669731800/pin_ladrao-removebg-preview_gdzctb.png")
      }
    ]
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    @incident.user = current_user
    if @incident.save
      redirect_to incident_path(@incident)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def incident_params
    params.require(:incident).permit(:incident_type, :location, :description)
  end
end
