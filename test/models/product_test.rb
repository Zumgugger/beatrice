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
#  sort                :integer          default(0)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
