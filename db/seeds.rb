Product.destroy_all
Review.destroy_all

78.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Food",
                        from: "China",
                        price: Faker::Number.decimal(2))
end

29.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Beverage",
                        from: "Brasil",
                        price: Faker::Number.decimal(2))
end

29.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Beverage",
                        from: "France",
                        price: Faker::Number.decimal(2))
end

12.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Gift",
                        from: "India",
                        price: Faker::Number.decimal(2))
end

18.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Spice",
                        from: "India",
                        price: Faker::Number.decimal(2))
end

5.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Subscription",
                        from: "USA",
                        price: Faker::Number.decimal(2))
end

314.times do |index|
  Review.create!(name: Faker::App.name,
                        comment: Faker::Lorem.sentence(10, true, 4),
                        rating: Faker::Number.between(1,5),
                        product_id: Faker::Number.between(1,Product.count))
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
