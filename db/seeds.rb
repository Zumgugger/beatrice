# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ProductCategory.delete_all

(0..20).each do |p|
name = "Produktkategorie "+p.to_s
text = "Produktkategorietext lorem ipsum etc. "+p.to_s
image = 'products/doodle'+rand(1..9).to_s+'.jpg'
ProductCategory.create(name: name, description: text, published: true, image: image)
end

Product.delete_all
ProductCategory.all.each do |c|
    (0..rand(10)).each do |p|
    name = "Produkt "+p.to_s
    text = "Produkttext lorem ipsum etc. "+p.to_s
    price = rand(10)
    image = 'products/doodle'+rand(1..9).to_s+'.jpg'
    category_id = c.id
    Product.create(name: name, description: text, on_sale: true, release_date:Time.now, price: price, image: image, product_category_id: category_id)
    end
end


