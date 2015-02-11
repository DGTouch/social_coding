class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_and_belongs_to_many :languages
  has_secure_password

end
