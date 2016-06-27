class AddProductCategoryToProducts < ActiveRecord::Migration[5.0]
  def change
      add_reference :products, :product_category, index: true
  end
end
