class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing]

  def home
    @incidents = Incident.all
    # The `geocoded` scope filters only incidents with coordinates
    @markers = @incidents.geocoded.map do |incident|
      if incident.incident_type == "Roubo"
        link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_ROUBO-removebg-preview_ltnpyp.png"
      elsif incident.incident_type == "Furto"
        link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_FURTO-removebg-preview_jmgj8x.png"
      elsif incident.incident_type == "Assédio"
        link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669926859/PIN_ASS%C3%89DIO_w3nz5l.png"
      elsif incident.incident_type == "polícia"
        link_url = "https://res.cloudinary.com/dwvglguvp/image/upload/v1670244032/development/vigilante/PIN_VIgilante-removebg-preview_cdthq2.png"
      else
        link_url = "https://res.cloudinary.com/deofzbzjp/image/upload/v1669836325/PIN_OUTROS-removebg-preview_sisizq.png"
      end
      {
        lat: incident.latitude,
        lng: incident.longitude,

        info_window: render_to_string(
          partial: "info_window",
          locals: {incident: incident}
        ),
        image_url: helpers.asset_url(link_url)

      }
    end
  end

  def landing
  end
end
