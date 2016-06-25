class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :body
      t.boolean :published, default: true

      t.timestamps
    end
  end
end
