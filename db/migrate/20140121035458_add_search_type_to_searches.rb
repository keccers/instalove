class AddSearchTypeToSearches < ActiveRecord::Migration
  def change
  	add_column :searches, :is_user_search, :string
  	add_column :searches, :is_tag_search, :string
  end
end
