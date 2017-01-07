# == Schema Information
#
# Table name: product_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  stock       :integer          default(1)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#  published   :boolean          default(TRUE)
#

class ProductCategory < ApplicationRecord
    
    has_many :products
end
