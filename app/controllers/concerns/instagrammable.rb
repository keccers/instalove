module Instagrammable
 extend ActiveSupport::Concern

 	def perform_search(search_obj)
 		if search_obj.is_user_search == "1"
 			search_by_user(search_obj.search_terms)
 		elsif search_obj.is_tag_search == "1"
 			search_by_tag(search_obj.search_terms)
 		end
 	end

	def search_by_tag(tags)
	 	@photos = Instagram.tag_recent_media(tags)
	 	save_photos(@photos)
	end

	def search_by_user(username)
		id = find_user_id(username)
		@photos = get_user_photos(id)
		save_photos(@photos)
	end

	private

	def find_user_id(username)
		Instagram.user_search(username).first.id
	end

	def get_user_photos(id)
		@photos = Instagram.user_recent_media(id)
	end

	def save_photos(photos)
		saved = []
		@photos.each do |photo|
			newpic = current_user.photos.find_or_create_by( :insta_id => photo.id, :url => photo.link, :photo_url => photo.images.standard_resolution.url, :likes => photo.likes.count, :filter => photo.filter)
			saved << newpic
		end
		saved
	end

end