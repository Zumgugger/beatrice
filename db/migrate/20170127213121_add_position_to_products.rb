class AddPositionToProducts < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :position, :integer
      Product.order(updated_at: :desc).each.with_index(1) do  |prod, index| prod.update_column :position, index
      end
  end
end
