class AddNotForSaleToProducts < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :not_for_sale, :boolean, default: false
  end
end
