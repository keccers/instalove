class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
    	t.string :title
    	t.text :description
    	t.string :search_terms, null: false
    	t.integer :user_id
    	
    	t.timestamps
    end
  end
end
