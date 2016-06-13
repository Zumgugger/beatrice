class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.datetime :release_date
      t.boolean :on_sale
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
