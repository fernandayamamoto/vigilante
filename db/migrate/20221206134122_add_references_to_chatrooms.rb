class AddReferencesToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :user, foreign_key: true
    add_reference :chatrooms, :user_two, foreign_key: { to_table: :users }
  end
end
