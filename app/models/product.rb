# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  description         :text
#  release_date        :datetime
#  on_sale             :boolean
#  price               :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :integer
#  image_file_name     :string
#  image_content_type  :string
#  image_file_size     :integer
#  image_updated_at    :datetime
#

class Product < ApplicationRecord

belongs_to :product_category
has_attached_file :image
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
