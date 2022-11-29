class RemoveTimeFromIncidents < ActiveRecord::Migration[7.0]
  def change
    remove_column :incidents, :time, :float
  end
end
