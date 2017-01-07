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

require 'test_helper'

class ProductCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
