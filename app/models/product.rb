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
#  image               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :integer
#

class Product < ApplicationRecord

belongs_to :product_category
end
