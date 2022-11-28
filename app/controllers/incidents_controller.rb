class IncidentsController < ApplicationController
  def index
    @incidents = incident.all
    # The `geocoded` scope filters only incidents with coordinates
    @markers = @incidents.geocoded.map do |incident|
      {
        lat: incident.latitude,
        lng: incident.longitude
      }
    end
  end
end
