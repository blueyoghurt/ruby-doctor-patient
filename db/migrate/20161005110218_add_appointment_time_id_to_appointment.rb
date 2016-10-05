class AddAppointmentTimeIdToAppointment < ActiveRecord::Migration[5.0]
  def change
        add_column :appointments, :appointment_time_id, :integer, index: true, foreign_key: true
  end
end
