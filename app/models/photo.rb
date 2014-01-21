class Photo < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :feeds

	attr_accessible :insta_id, :url, :photo_url, :description, :likes, :filter

end