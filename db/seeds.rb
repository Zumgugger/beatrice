# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.delete_all


(0..40).each do |p|
name = "Produkt "+p.to_s
text = "Produkttext lorem ipsum etc. "+p.to_s
price = rand(10)
image = 'products/doodle'+rand(1..9).to_s+'.jpg'
Product.create(name: name, description: text, on_sale: true, release_date:Time.now, price: price, image: image)
end

