# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Bike.create( description: 'New off-road bike',
#   neighborhood: 'Meguro',
#   price_per_day: 10,
#   size: 1,
#   basket: false,
#   photo: 'bike1.jpeg')

user = User.first

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Shibuya',
  price_per_day: 12,
  size: 2,
  basket: true,
  user: user,
  photo: 'bike2.jpeg')

Bike.create(description: 'Pink city cruiser',
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
  photo: 'bike.png')
