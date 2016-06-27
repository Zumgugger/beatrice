class CreateProductCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.text :description
      t.boolean :publised, default: true
      t.integer :stock, default: 1

      t.timestamps
    end
  end
end
