class DeletePubishedFromProductCategory < ActiveRecord::Migration[5.0]
  def change
      remove_column :product_categories, :publised
  end
end
