# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times {
  User.create(
    name: Faker::Name.name,
    username: Faker::Superhero.name,
    email: Faker::Internet.email,
    bio: Faker::Lorem.sentence,
    password_digest: "123"
  )
}

5.times {
  Product.create(
    name: Faker::App.name,
    price: rand(1..1000),
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: ""
  )
}

5.times {
  Order.create(
    user_id: [1..User.all.length].sample,
    shipped: [true, false].sample,
    total: rand(1..1000),
    paid: [true, false].sample,
    tracking_number: `##{rand(1..100000)}`,
    complete: [true, false].sample
  )
}

5.times {
  CartItem.create(
    product_id: [1..Product.all.length].sample,
    order_id: [1..Order.all.length].sample,
    count: rand(1..5),
    total: rand(1..1000)
  )
}
