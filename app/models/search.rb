class Search < ActiveRecord::Base
  belongs_to :user

  attr_accessible :title, :description, :search_terms, :is_user_search, :is_tag_search, :search_type

	# def trimmed_tags
	# 	newtag = self..delete(' ')
	# end

	def search_type
		if is_user_search == "1"
			return "User Search"
		elsif is_tag_search == "1"
			return "Tag Search"
		end
	end

end