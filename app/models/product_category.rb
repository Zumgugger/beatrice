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
  

class ProductCategory < ApplicationRecord
    
    has_many :products
    has_attached_file :image, styles: {original: "1000x1000>", medium: "400x400>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    acts_as_list
end
