# == Schema Information
#
# Table name: product_categories
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image              :string(255)
#  published          :boolean          default(TRUE)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  position           :integer
#

require 'test_helper'

class ProductCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
