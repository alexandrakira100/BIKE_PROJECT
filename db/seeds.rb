# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first

b = Bike.create( description: 'New off-road bike',
  neighborhood: 'Meguro',
  price_per_day: 48,
  size: 2,
  basket: true,
  user: user,
  photo: 'bike3.jpeg')

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Roppongi',
  price_per_day: 720,
  size: 2,
  basket: false,
  user: user,
  photo: 'bike4.jpeg')

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Shinjuku',
  price_per_day: 71,
  size: 2,
  basket: true,
  user: user,
  photo: 'bike5.jpeg')

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Shibuya',
  price_per_day: 53,
  size: 2,
  basket: false,
  user: user,
  photo: 'bike6.jpeg')

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Shinjuku',
  price_per_day: 44,
  size: 2,
  basket: false,
  user: user,
  photo: 'bike7.jpeg')

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Meguro',
  price_per_day: 63,
  size: 2,
  basket: true,
  user: user,
  photo: 'https://images.unsplash.com/photo-1507150080056-79542bdb9c59?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3439d3b29c7dfe0ab707999921341009&auto=format&fit=crop&w=750&q=80')


bike = Bike.first

  Rental.create(
  bike: Bike.last,
  user: User.first,
  start_date: Date.yesterday,
  end_date: Date.today)

  Rental.create(
  bike: Bike.first,
  user: User.first,
  start_date: Date.yesterday,
  end_date: Date.today)


