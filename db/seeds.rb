# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

miriam = User.create(email: "miriam@codaisseurup.com", password: "abcd1234")

 event = Event.create(name: "Monthly Yoga Weekend", description: "Let's come together and practice some asanas together in the woods!", location: "Amsterdam", includes_food: false, includes_drinks: true, price: 10.00, starts_at: 10.days.from_now, ends_at: 12.days.from_now, capacity: 100, active: true,  user: miriam)
