require 'faker'

puts 'cleaning DB...'
Restaurant.destroy_all

puts 'creating some restaurants'
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(digits: 10),
    category: ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian'].sample
  )
  puts "restaurant with id #{restaurant.id} created!"
end
