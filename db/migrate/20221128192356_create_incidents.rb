class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.string :location
      t.string :incident_type
      t.string :description
      t.float :time
      t.float :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
