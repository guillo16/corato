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
Mueble.create!(sku: 'co-001', name: 'comoda', price: '3159', category: 'habitacion', photo: 'corato - mesa de luz.png')
Mueble.create!(sku: 'co-002', name: 'mesa', price: '3159', category: 'living', photo: 'corato - mesa.png')
Mueble.create!(sku: 'co-003', name: 'mesa', price: '3159', category: 'galeria', photo: 'corato -mueble bajo mesada.png')

puts 'Finished!'
