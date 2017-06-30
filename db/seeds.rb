Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::App.name,
                        style: "Food",
                        price: Faker::Number.decimal(2))
end

p "Created #{Product.count} products"
