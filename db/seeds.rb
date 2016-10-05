# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create({"first_name"=>"Mr.Admin", "last_name"=>"Low","email" =>"mradmin@gmail.com","password_digest" =>"12345678","contact" =>"12345678","is_admin" =>TRUE})

User.find_or_create_by!(email: 'jeremiah@fakeemail.com') do |user|
  user.first_name = 'Jeremiah'
  user.last_name = 'Alexander'
  user.is_admin = true
  user.password = "password"
  # user.password_confirmation = "password"
end

puts "Finished DB seeding."
