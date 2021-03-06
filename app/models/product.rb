# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  description         :text(65535)
#  release_date        :datetime
#  on_sale             :boolean
#  price               :float(24)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :integer
#  image_file_name     :string(255)
#  image_content_type  :string(255)
#  image_file_size     :integer
#  image_updated_at    :datetime
#  not_for_sale        :boolean          default(FALSE)
#  position            :integer
#

class Product < ApplicationRecord
belongs_to :product_category
has_attached_file :image, styles: {original: "1000x1000>", medium: "400x400>", thumb: "100x100>" }
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
acts_as_list scope: :product_category, add_new_at: :top 
end
