# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

('A'..'Z').each do |name|
  Product.create(name: "商品#{name}", price: [100, 200, 300, 400].sample)
end

products = Product.all.to_a
100.times do
  OrderDetail.create(product: products.sample, count: (1..10).to_a.sample)
end
