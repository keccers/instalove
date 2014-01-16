class User < ActiveRecord::Base
  has_many :photos
  has_many :feeds, :through => :photos

  #attr_accessible :name, :email, :password, :password_confirmation

  has_secure_password

end