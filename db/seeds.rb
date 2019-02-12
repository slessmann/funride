# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[{email: 'mara@web.de', user_name: 'marry', password: 'bogota'},
{email: 'marry@web.de', user_name: 'm', password: 'bogota'}
].each do |info|
	User.create(info)
end

Ride.find_or_create_by(info)