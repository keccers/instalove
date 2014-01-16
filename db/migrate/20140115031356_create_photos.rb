class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.text :insta_id
      	t.text :url
      	t.text :photo_url
      	t.text :filter
      	t.text :description
      	t.integer :likes
    	  t.integer :user_id, null: false
        t.integer :feed_id, null: false
    	t.timestamps
    end
  end
end
