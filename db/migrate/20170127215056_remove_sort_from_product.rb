class RemoveSortFromProduct < ActiveRecord::Migration[5.0]
  def change
      remove_column :products, :sort
  end
end
