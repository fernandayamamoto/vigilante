class IncidentsController < ApplicationController
  def show
    @incident = Incident.find(params[:id])
    if @incident.incident_type == "Roubo"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_ROUBO-removebg-preview_ltnpyp.png"
    elsif @incident.incident_type == "Furto"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_FURTO-removebg-preview_jmgj8x.png"
    elsif @incident.incident_type == "Assédio"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669922146/PIN_ASS%C3%89DIO_itt9oh.png"
    else
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_OUTROS-removebg-preview_sisizq.png"
    end

    @markers = [
      {
        lat: @incident.latitude,
        lng: @incident.longitude,
        info_window: render_to_string(partial: "pages/info_window", locals: {incident: @incident}),
        image_url: helpers.asset_url(link_url)
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
