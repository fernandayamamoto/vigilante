class IncidentsController < ApplicationController
  before_action :set_incident, only: %i[show edit update destroy]

  def show
    if @incident.incident_type == "Roubo"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_ROUBO-removebg-preview_ltnpyp.png"
    elsif @incident.incident_type == "Furto"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_FURTO-removebg-preview_jmgj8x.png"
    elsif @incident.incident_type == "Assédio"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_ASS%C3%89DIO-removebg-preview_ppm6kf.png"
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

  def edit
  end

  def update
    if @incident.update(incident_params)
      redirect_to @incident, notice: "Incidente editado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @incident.destroy
    redirect_to home_path, status: :see_other
  end

  private

  def set_incident
    @incident = Incident.find(params[:id])
  end

  def incident_params
    params.require(:incident).permit(:incident_type, :location, :description)
  end
end
