# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
month_list = [
  [ "January"],
  [ "February"],
  [ "March" ],
  [ "April" ],
  [ "May" ],
  [ "June" ],
  [ "July" ],
  [ "August" ],
  [ "September" ],
  [ "October" ],
  [ "November" ],
  [ "December" ]
]

month_list.each do |name|
  Month.create( name: name )
end