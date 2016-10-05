class AddDoctorIdToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :doctor_id, :integer, index: true, foreign_key: true
  end
end
