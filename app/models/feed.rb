class Feed < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :photos

	attr_accessible :title

end
