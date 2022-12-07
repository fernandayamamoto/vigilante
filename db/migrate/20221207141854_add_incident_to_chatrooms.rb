class AddIncidentToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :incident, foreign_key: true
  end
end
