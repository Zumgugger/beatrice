class AddPaperclipImageToProductCategory < ActiveRecord::Migration[5.0]
  def change
      add_attachment :product_categories, :image
  end
end
