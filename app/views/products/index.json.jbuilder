json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :release_date, :on_sale, :price, :image
  json.url product_url(product, format: :json)
end
