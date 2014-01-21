class User < ActiveRecord::Base
  has_many :photos
  has_many :searches
  has_many :feeds

  attr_accessible :name, :email, :password, :password_confirmation

  has_secure_password

end