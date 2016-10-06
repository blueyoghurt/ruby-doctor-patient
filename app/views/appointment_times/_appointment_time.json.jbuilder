json.extract! appointment_time, :id, :time, :created_at, :updated_at
json.url appointment_time_url(appointment_time, format: :json)