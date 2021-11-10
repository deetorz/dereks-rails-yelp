puts 'Cleaning the db...'
Restaurant.destroy_all

puts 'Creating restaurants...'
15.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end

100.times do
  Review.create!(
    content: Faker::Restaurant.review,
    rating: (3..5).to_a.sample,
    restaurant: Restaurant.all.sample
  )
end

puts "Created #{Restaurant.count} restaurants and #{Review.count} reviews."
