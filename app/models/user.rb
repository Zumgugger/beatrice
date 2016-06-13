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
#

class User < ApplicationRecord
    has_secure_password
    
    
    EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :username, :presence => true, :uniqueness => true
    validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
    validates :password, :confirmation => true
    validates_presence_of :password, on: :create

    attr_accessor :password_confirmation
    
end
