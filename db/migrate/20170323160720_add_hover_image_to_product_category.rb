class AddHoverImageToProductCategory < ActiveRecord::Migration[5.0]
  def change
      add_attachment :product_categories, :hover
  end
end