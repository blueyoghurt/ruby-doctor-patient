# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Doctor.create({"name"=>"Belgien"})
Doctor.create({"name"=>"Luke", "speciality"=>"Brain & Nerves (Neurology)","contact" =>12345678})
Doctor.create({"name"=>"Wei Ying", "speciality"=>"Bones (Orthopaedics)","contact" =>222222222})
Doctor.create({"name"=>"Dexter", "speciality"=>"Cancer (Oncology)","contact" =>33333333})
Doctor.create({"name"=>"Mr.Dog", "speciality"=>"Ear, Nose & Throat (Otorhinolaryngology)","contact" =>44444444})
Doctor.create({"name"=>"Mr.Cat", "speciality"=>"Heart & Vascular (Cardiovascular)","contact" =>5555555})

AppointmentTime.create([{time: '9am to 10am'},{time: '10am to 11am'},{time: '11am to 12pm'},{time: '2pm to 3am'},{time: '3pm to 4pm'},{time: '4pm to 5pm'}])

User.find_or_create_by!(email: 'test@test.com') do |user|
  user.first_name = 'Jeremiah'
  user.last_name = 'Alexander'
  user.is_admin = true
  user.password = "password"
  user.contact = 12345678
end
