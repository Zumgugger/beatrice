# == Schema Information
#
# Table name: blogposts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  published  :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blogpost < ApplicationRecord
end
