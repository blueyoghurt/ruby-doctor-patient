class CreateAppointmentTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :appointment_times do |t|
      t.string :time

      t.timestamps
    end
  end
end
