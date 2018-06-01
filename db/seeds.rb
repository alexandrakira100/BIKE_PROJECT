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
  price_per_day: 500,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: "./app/assets/images/bike.png"
  )

Bike.create!(description: 'City Cruiser',
  neighborhood: 1,
  price_per_day: 720,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike4.jpg')

Bike.create!(description: 'Great for city-riding',
  neighborhood: 2,
  price_per_day: 600,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: './app/assets/images/bike5.jpg')

Bike.create!(description: 'Compact City Bike',
  neighborhood: 3,
  price_per_day: 1000,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike6.jpg')

Bike.create!(description: 'Excellent for crowded city roads',
  neighborhood: 4,
  price_per_day: 750,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike7.jpg')

Bike.create!(description: 'For safe bike rides in the city',
  neighborhood: 5,
  price_per_day: 500,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: 'https://images.unsplash.com/photo-1507150080056-79542bdb9c59?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3439d3b29c7dfe0ab707999921341009&auto=format&fit=crop&w=750&q=80')

Bike.create!(description: 'City Explorer',
  neighborhood: 1,
  price_per_day: 400,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike4.jpg')

Bike.create!(description: 'Brand new bicycle - excellent condition',
  neighborhood: 2,
  price_per_day: 800,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: './app/assets/images/bike5.jpg')

Bike.create!(description: 'Very smooth handlebar action',
  neighborhood: 3,
  price_per_day: 700,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike6.jpg')

Bike.create!(description: 'Sporty model',
  neighborhood: 4,
  price_per_day: 650,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike7.jpg')

Bike.create!(description: 'Great way to see the city sights',
  neighborhood: 1,
  price_per_day: 720,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike4.jpg')

Bike.create!(description: 'For sporty users',
  neighborhood: 2,
  price_per_day: 500,
  size: 2,
  basket: true,
  user: user,
  remote_photo_url: './app/assets/images/bike5.jpg')

Bike.create!(description: 'Tokyo Explorer',
  neighborhood: 3,
  price_per_day: 100,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike6.jpg')

Bike.create!(description: 'Classic bike with super-lightweight frame',
  neighborhood: 4,
  price_per_day: 400,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike7.jpg')

Bike.create!(description: 'Classic bike design',
  neighborhood: 4,
  price_per_day: 600,
  size: 2,
  basket: false,
  user: user,
  remote_photo_url: './app/assets/images/bike7.jpg')


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


