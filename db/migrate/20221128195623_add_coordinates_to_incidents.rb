class AddCoordinatesToIncidents < ActiveRecord::Migration[7.0]
  def change
    add_column :incidents, :latitude, :float
    add_column :incidents, :longitude, :float
  end
end
