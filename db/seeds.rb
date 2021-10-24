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

# Technology
  Product.create!(
    name: "Headphones",
    price: 79.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1545127398-14699f92334b?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    # image: ["https://images.unsplash.com/photo-1577741314755-048d8525d31e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", 
    # "https://images.unsplash.com/photo-1545127398-14699f92334b?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80", 
    # "https://images.unsplash.com/photo-1549006319-dbb635b68cbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", 
    # "https://images.unsplash.com/photo-1499336969384-ebe67b79faa8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", 
    # "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80", 
    # "https://mms-images-prod.imgix.net/mms/images/catalog/30932f7ecd279b5f47cdcfb4f8992137/styles/4100/catalog_detail_image_large.jpg?ixlib=rails-2.1.4&w=700&h=700&fit=fill&bg=ffffff&dpr=1&q=60&fm=pjpg&auto=compress&trim=auto&trimmd=0", 
    # "https://lp2.hm.com/hmgoepprod?set=source[/46/c8/46c8f3471d51988bcc8b1b4825ee83d32be2445d.jpg],origin[dam],category[men_hoodiessweatshirts_hoodies],type[DESCRIPTIVESTILLLIFE],res[s],hmver[1]&call=url[file:/product/main]", 
    # "https://shop.r10s.jp/noel-ange/cabinet/1709/vsc05-170925-02-a.jpg", 
    # "https://media.gq.com/photos/5c59d5e34e061206f3d31c53/master/w_1280%2Cc_limit/GQ-best-stuff-sweaters-uniqlo-3x2.jpg", 
    # "https://cdn.shopify.com/s/files/1/0236/4195/products/20161123_W_P_Product_00028-LR.jpg", 
    # "https://images.unsplash.com/photo-1554213352-5ffe6534af08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1486401899868-0e435ed85128?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1521369909029-2afed882baee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1523170335258-f5ed11844a49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1532033375034-a29004ea9769?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", 
    # "https://images.unsplash.com/photo-1524116125474-e3eec64213f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"].sample,
    quantity: 1
  )
  Product.create!(
    name: "Bluetooth speaker",
    price: 200.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1549006319-dbb635b68cbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
    quantity: 1
)
  Product.create!(
    name: "Camera",
    price: 1000.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1502920917128-1aa500764cbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    quantity: 1
)
  Product.create!(
    name: "SD Card",
    price: 19.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1499336969384-ebe67b79faa8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
    quantity: 1
)
  Product.create!(
    name: "Laptop",
    price: 1200.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    quantity: 1
)

# Clothing
  Product.create!(
    name: "Hat",
    price: 20.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1521369909029-2afed882baee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    quantity: 1
  )
  Product.create!(
    name: "Socks",
    price: 5.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1535486648131-54a1558cb3fc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2940&q=80",
    quantity: 1
)
  Product.create!(
    name: "Sweater",
    price: 40.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://media.gq.com/photos/5c59d5e34e061206f3d31c53/master/w_1280%2Cc_limit/GQ-best-stuff-sweaters-uniqlo-3x2.jpg",
    quantity: 1
)
  Product.create!(
    name: "Muffler",
    price: 55.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://shop.r10s.jp/noel-ange/cabinet/1709/vsc05-170925-02-a.jpg",
    quantity: 1
)
  Product.create!(
    name: "Hoddie",
    price: 49.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://lp2.hm.com/hmgoepprod?set=source%5B/46/c8/46c8f3471d51988bcc8b1b4825ee83d32be2445d.jpg%5D,origin%5Bdam%5D,category%5Bmen_hoodiessweatshirts_hoodies%5D,type%5BDESCRIPTIVESTILLLIFE%5D,res%5Bs%5D,hmver%5B1%5D&call=url%5Bfile:/product/main%5D",
    quantity: 1
)
# Beauty Products
  Product.create!(
    name: "Body Cream",
    price: 25.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1562887193-417e6bcfedcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    quantity: 1
  )
  Product.create!(
    name: "Chanel CC Cream",
    price: 55.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1527632911563-ee5b6d53465b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    quantity: 1
)
  Product.create!(
    name: "Tropic face cream",
    price: 25.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1570723968283-109ba8d6dda9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    quantity: 1
)
  Product.create!(
    name: "Glow Face Mask",
    price: 50.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1552046122-03184de85e08?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    quantity: 1
)
  Product.create!(
    name: "Mascara",
    price: 25.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1562887245-138c2f45013e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
    quantity: 1
)
# Furniture
  Product.create!(
    name: "Bar Stool",
    price: 169.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1580479929210-07eae66cf997?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    quantity: 1
  )
  Product.create!(
    name: "Chair",
    price: 99.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1560830889-96266c6dbe96?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    quantity: 1
)
  Product.create!(
    name: "Coffee Table",
    price: 299.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1559662780-33af019fd570?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    quantity: 1
)
  Product.create!(
    name: "Sofa",
    price: 370.00,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    quantity: 1
)
  Product.create!(
    name: "Books",
    price: 129.99,
    rating: rand(1..5),
    description: Faker::Lorem.sentence,
    image: "https://images.unsplash.com/photo-1510172951991-856a654063f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    quantity: 1
)

# 10.times {
#   Category.create(
#     name: Faker::Commerce.department(max: 1)
#   )
# }

# Categories
Category.create(
  name: "Electronics"
)
Category.create(
  name: "Clothing"
)
Category.create(
  name: "Beauty & Health"
)
Category.create(
  name: "Home"
)

# 100.times do 
#   CategoryProduct.create!(
#     product_id: rand(Product.first.id..Product.last.id),
#     category_id: rand(Category.first.id..Category.last.id)
#   )
# end

# Electronics
  CategoryProduct.create!(
    product_id: 1,
    category_id: 1
  )
  CategoryProduct.create!(
    product_id: 2,
    category_id: 1
  )
  CategoryProduct.create!(
    product_id: 3,
    category_id: 1
  )
  CategoryProduct.create!(
    product_id: 4,
    category_id: 1
  )
  CategoryProduct.create!(
    product_id: 5,
    category_id: 1
  )

# Clothing
  CategoryProduct.create!(
    product_id: 6,
    category_id: 2
  )
  CategoryProduct.create!(
    product_id: 7,
    category_id: 2
  )
  CategoryProduct.create!(
    product_id: 8,
    category_id: 2
  )
  CategoryProduct.create!(
    product_id: 9,
    category_id: 2
  )
  CategoryProduct.create!(
    product_id: 10,
    category_id: 2
  )
  
# Beauty & Health
  CategoryProduct.create!(
    product_id: 11,
    category_id: 3
  )
  CategoryProduct.create!(
    product_id: 12,
    category_id: 3
  )
  CategoryProduct.create!(
    product_id: 13,
    category_id: 3
  )
  CategoryProduct.create!(
    product_id: 14,
    category_id: 3
  )
  CategoryProduct.create!(
    product_id: 15,
    category_id: 3
  )

# Home
  CategoryProduct.create!(
    product_id: 16,
    category_id: 4
  )
  CategoryProduct.create!(
    product_id: 17,
    category_id: 4
  )
  CategoryProduct.create!(
    product_id: 18,
    category_id: 4
  )
  CategoryProduct.create!(
    product_id: 19,
    category_id: 4
  )
  CategoryProduct.create!(
    product_id: 20,
    category_id: 4
  )

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
