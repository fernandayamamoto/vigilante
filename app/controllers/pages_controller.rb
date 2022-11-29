class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @incidents = incident.all
      # The `geocoded` scope filters only incidents with coordinates
    @markers = @incidents.geocoded.map do |incident|
      {
        lat: incident.latitude,
        lng: incident.longitude
        info_window: render_to_string(partial:
        "info_window", location: {incident: incident})
      }
    end
  end
end
