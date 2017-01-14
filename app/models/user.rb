# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  admin           :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ApplicationRecord
    attr_accessor   :activation_token
    has_secure_password
    before_save :downcase_email
#    before_create :create_activation_digest
    
    
    EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
    validates :username, :presence => true, :uniqueness => true
    validates :password, :confirmation => true
    validates_presence_of :password, on: :create

    attr_accessor :password_confirmation
    
private
    def downcase_email
        self.email = email.downcase
    end

    #def create_activation_digest
        #self.activation_token = User.new_token
        #self.activation_digest = User.digest(activation_token)
    #end
    
#    def authenticated?(attribute, token)
#        digest = send("#{attribute}_digest")
#        return false if digest.nil?
#        BCrypt::Password.new(digest).is_password?(token)
#    end
    
end
