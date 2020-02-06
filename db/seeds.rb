# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CartItem.destroy_all
Order.destroy_all
Product.destroy_all
User.destroy_all

require 'faker'

20.times {
  User.create!(
    name: Faker::Name.name,
    username: Faker::Superhero.name,
    email: Faker::Internet.email,
    bio: Faker::Lorem.sentence,
    password: "123"
  )
}

30.times {
  Product.create!(
    name: Faker::Commerce.product_name,
    price: rand(1..1000),
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: ""
  )
}

10.times {
  Category.create(
    name: Faker::Commerce.department(max: 1)
  )
}

20.times do 
  CategoryProduct.create!(
    product_id: rand(Product.first.id..Product.last.id),
    category_id: rand(Category.first.id..Category.last.id)
  )
end

20.times do 
  Order.create!(
    user_id: rand(User.first.id..User.last.id),
    shipped: [true, false].sample,
    total: rand(1..1000),
    paid: [true, false].sample,
    tracking_number: rand(1..100000),
    complete: [true, false].sample
  )
end

20.times do
  CartItem.create!(
    product_id: rand(Product.first.id..Product.last.id),
    order_id:  rand(Order.first.id..Order.last.id),
    count: rand(1..5),
    total: rand(1..1000)
  )
end
