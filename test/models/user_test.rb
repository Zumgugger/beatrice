# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string
#  email              :string
#  encrypted_password :string
#  salt               :string
#  admin              :boolean          default(FALSE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  password_digest    :string
#  activation_digest  :string
#  activated          :boolean          default(FALSE)
#  activated_at       :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
