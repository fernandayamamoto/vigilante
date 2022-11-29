class AddIncidentDateToIncidents < ActiveRecord::Migration[7.0]
  def change
    add_column :incidents, :incident_date, :datetime
  end
end
