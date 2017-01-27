# == Schema Information
#
# Table name: snippets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  text       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Snippet < ApplicationRecord
end
