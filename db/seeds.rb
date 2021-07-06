# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
  {name: "Outerwear", description: "Jackets, coats, etc."}, 
  {name: "Dress", description: "One piece garments"},
  {name: "Bottom", description: "Jeans, pants, shorts,"},
  {name: "Sweatshirt", description: "Jumpers/hoodies"},
  {name: "Knitwear", description: "Knitted tops, cardigans, etc"},
  {name: "Accessory", description: "Belts, wallets, scarves, etc"},
  {name: "Shoes", description: "Sneakers, dress shoes, slippers"}
]

if User.count == 0
  User.create(username: "Tester", email: "test@test.com", password: "Password", password_confirmation: "Password")
end

if Category.count == 0
  categories.each do |category|
    Category.create(name:category[:name], description: category[:description])
    puts "Created #{category[:name]} name"
  end
end