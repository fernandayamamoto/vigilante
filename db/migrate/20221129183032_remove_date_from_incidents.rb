class RemoveDateFromIncidents < ActiveRecord::Migration[7.0]
  def change
    remove_column :incidents, :date, :float
  end
end
