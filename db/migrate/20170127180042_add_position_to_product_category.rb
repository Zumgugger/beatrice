class AddPositionToProductCategory < ActiveRecord::Migration[5.0]
  def change
      add_column :product_categories, :position, :integer
      ProductCategory.order(updated_at: :desc).each.with_index(1) do  |prod_cat, index| prod_cat.update_column :position, index
      end
  end
end
