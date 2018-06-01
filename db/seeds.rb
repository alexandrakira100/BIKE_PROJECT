# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rental.destroy_all
Bike.destroy_all
User.destroy_all

user = User.create!( name: 'Sara',
  email: 'sara@hello.com',
  password: "123456")

b = Bike.create!( description: 'New off-road bike',
  neighborhood: 0,
  price_per_day: 48,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: "./app/assets/images/bike.png"
  )

Bike.create!(description: 'Pink city cruiser',
  neighborhood: 1,
  price_per_day: 720,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike4.jpg')

Bike.create!(description: 'Great Bike for Women',
  neighborhood: 2,
  price_per_day: 71,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: './app/assets/images/bike5.jpg')

Bike.create!(description: 'Original Sheen Bike',
  neighborhood: 3,
  price_per_day: 53,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike6.jpg')

Bike.create!(description: 'The fastest Bike in Tokyo',
  neighborhood: 4,
  price_per_day: 44,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike7.jpg')

Bike.create!(description: 'Family-bike',
  neighborhood: 5,
  price_per_day: 63,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: 'https://images.unsplash.com/photo-1507150080056-79542bdb9c59?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3439d3b29c7dfe0ab707999921341009&auto=format&fit=crop&w=750&q=80')


bike = Bike.first

  Rental.create!(
  bike: Bike.last,
  user: User.first,
  start_date: Date.yesterday,
  end_date: Date.today)

  Rental.create!(
  bike: Bike.first,
  user: User.first,
  start_date: Date.yesterday,
  end_date: Date.today)


