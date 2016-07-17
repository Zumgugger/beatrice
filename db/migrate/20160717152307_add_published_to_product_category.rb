class AddPublishedToProductCategory < ActiveRecord::Migration[5.0]
  def change
      add_column :product_categories, :published, :boolean, default: true
  end
end
