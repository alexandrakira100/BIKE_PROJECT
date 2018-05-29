# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.create( description: 'New off-road bike',
  neighborhood: 'Meguro',
  price_per_day: 10,
  size: 1,
  basket: false,
  photo: 'https://images.unsplash.com/photo-1484144709249-a643e3720d13?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=09a47f6cde9a3102a94b4e7d5b90b420&auto=format&fit=crop&w=790&q=80')

Bike.create(description: 'Pink city cruiser',
  neighborhood: 'Shibuya',
  price_per_day: 12,
  size: 2,
  basket: true,
  photo: 'https://images.unsplash.com/photo-1507150080056-79542bdb9c59?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3439d3b29c7dfe0ab707999921341009&auto=format&fit=crop&w=750&q=80')
