# == Schema Information
#
# Table name: blogposts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text(65535)
#  published  :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BlogpostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
