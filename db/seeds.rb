# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

caleb = Family.create!
cortney = Family.create!
carlee = Family.create!

Member.create!(name: 'Caleb', family_id: caleb.id)
Member.create!(name: 'Ruth', family_id: caleb.id)
Member.create!(name: 'Gideon', family_id: caleb.id)
Member.create!(name: 'Lillian', family_id: caleb.id)
Member.create!(name: 'Eyouel', family_id: caleb.id)


Member.create!(name: 'Carlee', family_id: carlee.id)
Member.create!(name: 'Dakota', family_id: carlee.id)
Member.create!(name: 'Izzie', family_id: carlee.id)
Member.create!(name: 'Boyd', family_id: carlee.id)


Member.create!(name: 'Cortney', family_id: cortney.id)
Member.create!(name: 'Holly', family_id: cortney.id)
Member.create!(name: 'Mercy', family_id: cortney.id)
