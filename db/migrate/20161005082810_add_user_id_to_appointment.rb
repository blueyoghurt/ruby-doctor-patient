class AddUserIdToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :user_id, :integer, index: true, foreign_key: true
  end
end
