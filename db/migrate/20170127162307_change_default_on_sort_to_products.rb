class ChangeDefaultOnSortToProducts < ActiveRecord::Migration[5.0]
  def change
      remove_column :products, :sort
      add_column :products, :sort, :integer, default: 0
  end
end
