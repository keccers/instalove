class User < ActiveRecord::Base
#has many photos
  has_secure_password
end