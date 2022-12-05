class IncidentsController < ApplicationController
  before_action :set_incident, only: %i[show edit update destroy]

  def show
    authorize @incident
    if @incident.incident_type == "Roubo"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_ROUBO-removebg-preview_ltnpyp.png"
    elsif @incident.incident_type == "Furto"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_FURTO-removebg-preview_jmgj8x.png"
    elsif @incident.incident_type == "Assédio"
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669926859/PIN_ASS%C3%89DIO_w3nz5l.png"
    elsif @incident.incident_type == "polícia"
      link_url = "https://res.cloudinary.com/dwvglguvp/image/upload/v1670244032/development/vigilante/PIN_VIgilante-removebg-preview_cdthq2.png"
    else
      link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_OUTROS-removebg-preview_sisizq.png"
    end

    @marker =
      {
        lat: @incident.latitude,
        lng: @incident.longitude,
        info_window: render_to_string(partial: "pages/info_window", locals: {incident: @incident}),
        image_url: helpers.asset_url(link_url)
      }
  end

  def new
    @incident = Incident.new
    authorize @incident
  end

  def create
    @incident = Incident.new(incident_params)
    @incident.user = current_user
    authorize @incident
    if @incident.save
      redirect_to incident_path(@incident)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @incident
  end

  def update
    authorize @incident
    if @incident.update(incident_params)
      redirect_to @incident, notice: "Incidente editado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @incident
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
