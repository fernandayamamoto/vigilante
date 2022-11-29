class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @incidents = Incident.all
      # The `geocoded` scope filters only incidents with coordinates
    @markers = @incidents.geocoded.map do |incident|
      {
        lat: incident.latitude,
        lng: incident.longitude,
        info_window: render_to_string(partial:
        "info_window", location: {incident: incident}),
        image_url:
        helpers.asset_url("https://res.cloudinary.com/dwvglguvp/image/upload/v1669731800/pin_ladrao-removebg-preview_gdzctb.png
        ")
      }
    end
  end
end
