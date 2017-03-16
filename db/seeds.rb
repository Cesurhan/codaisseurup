Photo.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

# Users
miriam = User.create!(
  email: 'miriam@codaisseurup.com',
  password: 'abcd1234'
)

# Photos
photo1 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/pedro_santana_oevrqo.jpg')
photo2 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/modern_dance_lliymt.png')
photo3 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/hip_hop_krjuqv.jpg')
photo4 = Photo.create(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489671150/dance_with_india_hc5rpg.jpg')

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
  photos: [photo1]

)

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

event = Event.find_by(name: 'Monthly Yoga Weekend')
event.categories << Category.find_by(name: 'Outdoors & Adventure')
event.categories << Category.find_by(name: 'Sports & Fitness')
