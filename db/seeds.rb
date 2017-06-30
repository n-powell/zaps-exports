Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Food",
                        price: Faker::Number.decimal(2))
end

300.times do |index|
  Review.create!(name: Faker::App.name,
                        comment: Faker::Lorem.sentence(10, true, 4),
                        rating: Faker::Number.between(1,5),
                        product_id: Faker::Number.between(1,50))
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
