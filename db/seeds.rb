# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Mueble.destroy_all

puts 'Creating muebles...'
Mueble.create!(sku: 'co-001', name: 'comoda', category: 'habitacion', photo: 'https://cdn1.mueblesrey.com/2832-large_default/mueble-para-tv-delta.jpg')
Mueble.create!(sku: 'co-002', name: 'mesa', category: 'living', photo: 'https://cdn.jysk.es/media/catalog/product/cache/9/thumbnail/960x/d34aaef3401395db2614ec4ce2acbbee/3/6/36511001_1__1.jpg')
puts 'Finished!'
