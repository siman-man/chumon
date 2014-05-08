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

30.times do
  products = Product.all.shuffle
  order = Order.new

  # 注文一つにつき3-5個のつまり商品を登録
  (3..5).to_a.sample.times do
    order.order_details.build(product: products.shift, count: (1..4).to_a.sample)
  end

  order.save
end
