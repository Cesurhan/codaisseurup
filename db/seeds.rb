Photo.delete_all
Registration.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Users
miriam = User.create(email: 'miriam@codaisseurup.com', password: 'abcd1234')
wouter = User.create(email: 'wouter@codaisseurup.com', password: 'abcd1234')
mat = User.create(email: 'mat@codaisseurup.com', password: 'abcd1234')

puts "#{User.all.size} users created"

# Photos
photo1 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/pedro_santana_oevrqo.jpg')
photo2 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/modern_dance_lliymt.png')
photo3 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/hip_hop_krjuqv.jpg')
photo4 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/dance_with_india_hc5rpg.jpg')

puts "#{Photo.all.size} photos created"

# Events
event = Event.create!(
  name: 'Monthly Yoga Weekend',
  description: "Let's come together and practice some asanas together in the woods!",
  location: 'Amsterdam',
  includes_food: false,
  includes_drinks: true,
  price: 10.00,
  starts_at: 10.days.from_now,
  ends_at: 12.days.from_now,
  capacity: 100,
  active: true,
  user: miriam,
  photos: [photo1, photo2, photo3]
)

puts "#{Event.all.size} events created"

# Categories
Category.create!([
                   { name: 'Movements' },
                   { name: 'Outdoors & Adventure' },
                   { name: 'Tech' },
                   { name: 'Family' },
                   { name: 'Health & Wellness' },
                   { name: 'Sports & Fitness' },
                   { name: 'Learning' },
                   { name: 'Photography' },
                   { name: 'Food & Drink' }
                 ])

puts "#{Category.all.size} categories created"

# Events
event = Event.find_by(name: 'Monthly Yoga Weekend')
event.categories << Category.find_by(name: 'Outdoors & Adventure')
event.categories << Category.find_by(name: 'Sports & Fitness')

puts "#{Event.all.size} events created"

# Registrations
Registration.create([
                      { event: event, user: wouter, price: event.price, registered_at: 2.days.ago, guests_count: 1 },
                      { event: event, user: mat, price: event.price, registered_at: 10.days.ago, guests_count: 3 }
                    ])

puts "#{Registration.all.size} registrations created"
