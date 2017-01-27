class AddPositionToProduct < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :sort, :integer, default: Time.now
  end
end
