# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ShipType.delete_all

ShipType.create([
  {name: "Carrier", squares: 5},
  {name: "Battleship", squares: 4},
  {name: "Destroyer", squares: 3},
  {name: "Submarine", squares: 3},
  {name: "Patrol Boat", squares: 2}
  ])
